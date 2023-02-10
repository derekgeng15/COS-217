#include <stdio.h>
#include <stdlib.h>

enum STATE {
    NORMAL, STARTCOMMENT, INCOMMENT, ENDCOMMENT, SINGLESTR, DOUBLESTR, IGNORESINGLE, IGNOREDOUBLE
};

enum STATE normal(char input) {
    switch (input) {
        case '/':
            return STARTCOMMENT;
        case '\'':
            putchar(input);
            return SINGLESTR;
        case '"':
            putchar(input);
            return DOUBLESTR;
    }
    putchar(input);
    return NORMAL;
}

enum STATE startComment(char input) {
    /* handle false start comment */
    if (input != '*') {
        putchar('/');
        return normal(input);
    }

    putchar(' ');
    return INCOMMENT;
}

enum STATE inComment(char input) {
    if (input == '*')
        return ENDCOMMENT;
    if (input == '\n') /* accounting for new lines */
        putchar(input);
    return INCOMMENT;
}

enum STATE endComment(char input) {
    /* handle false end comment */
    if (input != '/')
        return inComment(input);
    return NORMAL;
}

enum STATE singleSTR(char input) {
    putchar(input);
    switch (input) {
        case '\\':
            return IGNORESINGLE;
        case '\'':
            return NORMAL;
    }
    return SINGLESTR;
}

enum STATE doubleSTR(char input) {
    putchar(input);
    switch (input) {
        case '\\':
            return IGNOREDOUBLE;
        case '\"':
            return NORMAL;
    }
    return DOUBLESTR;
}

enum STATE ignoreSingle(char input) {
    putchar(input);
    return SINGLESTR;
}

enum STATE ignoreDouble(char input) {
    putchar(input);
    return DOUBLESTR;
}

int main() {
    int input; /* next input character */
    enum STATE state = NORMAL; /* current state */
    int line = 1; /* current line number */
    int commentLine; /* starting comment line */

    /* continue reading characters until end of file */
    while ((input = getchar()) != EOF) {
        line += (input == '\n'); /* increment line count*/
        switch (state) {
            /* call the proper state handler based on DFA*/
            case NORMAL:
                state = normal(input);
                break;
            case STARTCOMMENT:
                commentLine = line;
                state = startComment(input);
                break;
            case INCOMMENT:
                state = inComment(input);
                break;
            case ENDCOMMENT:
                state = endComment(input);
                break;
            case SINGLESTR:
                state = singleSTR(input);
                break;
            case DOUBLESTR:
                state = doubleSTR(input);
                break;
            case IGNORESINGLE:
                state = ignoreSingle(input);
                break;
            case IGNOREDOUBLE:
                state = ignoreDouble(input);
                break;
        }
    }
    if (state == STARTCOMMENT) putchar('/'); 
    if (state == INCOMMENT || state == ENDCOMMENT) {
        fprintf(stderr, "Error: line %d: unterminated comment\n", commentLine);
        return EXIT_FAILURE;
    }
    return 0;
}
