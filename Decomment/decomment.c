#include <stdio.h>
#include <stdlib.h>

enum STATE {
    NORMAL, STARTCOMMENT, INCOMMENT, ENDCOMMENT, SINGLESTR, DOUBLESTR, IGNORESINGLE, IGNOREDOUBLE
};

/* normal state handler */
enum STATE normal(char input) {
    /* transition to other states */
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

/* startcomment state handler */
enum STATE startComment(char input) {
    /* handle false start comment */
    if (input != '*') {
        putchar('/');
        return normal(input);
    }
    /* add space and transition to incomment state */
    putchar(' ');
    return INCOMMENT;
}

/* incomment state handler */
enum STATE inComment(char input) {
    /* transition to end comment state */
    if (input == '*')
        return ENDCOMMENT;
    if (input == '\n') /* accounting for new lines */
        putchar(input);
    return INCOMMENT;
}

/* endcomment state handler */
enum STATE endComment(char input) {
    /* handle false end comment */
    if (input != '/')
        return inComment(input);
    return NORMAL;
}

/* singleSTR state handler */
enum STATE singleSTR(char input) {
    putchar(input);
    /* transition to other states*/
    switch (input) {
        case '\\':
            return IGNORESINGLE;
        case '\'':
            return NORMAL;
    }
    return SINGLESTR;
}

/* doubleSTR state handler */
enum STATE doubleSTR(char input) {
    putchar(input);
    /* transition to other states*/
    switch (input) {
        case '\\':
            return IGNOREDOUBLE;
        case '\"':
            return NORMAL;
    }
    return DOUBLESTR;
}

/* ignoreSingle state handler */
enum STATE ignoreSingle(char input) {
    putchar(input);
    return SINGLESTR;
}

/* ignoreDouble state handler */
enum STATE ignoreDouble(char input) {
    putchar(input);
    return DOUBLESTR;
}

/* main driver function*/
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
