#include <stdio.h>
#include <stdlib.h>

/* states for decomment DFA. Functions and variables
   with s_ indicates a state type */
enum STATE {
    NORMAL, STARTCOMMENT, INCOMMENT, ENDCOMMENT, 
    SINGLESTR, DOUBLESTR, IGNORESINGLE, IGNOREDOUBLE
};

/* normal state handler */
/* default state, enters str and comment
   states based on inputs */
enum STATE s_normalHandler(char cinput) {
    /* transition to other states */
    switch (cinput) {
        case '/':
            return STARTCOMMENT;
        case '\'':
            putchar(cinput);
            return SINGLESTR;
        case '"':
            putchar(cinput);
            return DOUBLESTR;
    }
    putchar(cinput);
    return NORMAL;
}

/* startcomment state handler */
/* enters incomment state if a real comment,
   otherwise handle similar to normal state */
enum STATE s_startCommentHandler(char cinput) {
    /* handle false start comment */
    if (cinput != '*') {
        /* handle similar to normal */
        switch (cinput) {
        case '/':
            return STARTCOMMENT;
        case '\'':
            putchar(cinput);
            return SINGLESTR;
        case '"':
            putchar(cinput);
            return DOUBLESTR;
        }
        putchar(cinput);
        return NORMAL;
    }
    /* add space and transition to incomment state */
    putchar(' ');
    return INCOMMENT;
}

/* incomment state handler */
/* inside a comment, ignores characters 
   except for newlines */
enum STATE s_inCommentHandler(char cinput) {
    /* transition to end comment state */
    if (cinput == '*')
        return ENDCOMMENT;
    if (cinput == '\n') /* accounting for new lines */
        putchar(cinput);
    return INCOMMENT;
}

/* endcomment state handler */
/* exits comment if true endcomment, 
   othewise handles similar to incomment */
enum STATE s_endCommentHandler(char cinput) {
    /* handle false end comment */
    if (cinput != '/') {
        if (cinput == '*')
            return ENDCOMMENT;
        if (cinput == '\n') /* accounting for new lines */
        putchar(cinput);
        return INCOMMENT;
    }
    return NORMAL;
}

/* singleSTR state handler */
/* inside single quote str, will exit if 
   another single quote is seen */
enum STATE s_singleSTRHandler(char cinput) {
    putchar(cinput);
    /* transition to other states */
    switch (cinput) {
        case '\\':
            return IGNORESINGLE;
        case '\'':
            return NORMAL;
    }
    return SINGLESTR;
}

/* doubleSTR state handler */
/* inside double quote str, will exit if 
   another double quote is seen */
enum STATE s_doubleSTRHandler(char cinput) {
    putchar(cinput);
    /* transition to other states*/
    switch (cinput) {
        case '\\':
            return IGNOREDOUBLE;
        case '\"':
            return NORMAL;
    }
    return DOUBLESTR;
}

/* ignoreSingle state handler */
/* ignores backslash and returns to single str */
enum STATE s_ignoreSingleHandler(char cinput) {
    putchar(cinput);
    return SINGLESTR;
}

/* ignoreDouble state handler */
/* ignores backslash and returns to double str */
enum STATE s_ignoreDoubleHandler(char cinput) {
    putchar(cinput);
    return DOUBLESTR;
}

/* main driver function*/
int main() {
    int iinput; /* next input character */
    enum STATE sstate = NORMAL; /* start state is normal */
    int iline = 1; /* current line number */
    int icommentLine; /* starting line of current comment */

    /* continue reading characters until end of file */
    while ((iinput = getchar()) != EOF) {
        iline += (iinput == '\n'); /* increment line count */
        switch (sstate) {
            /* call the proper state handler based on DFA */
            case NORMAL:
                sstate = s_normalHandler(iinput);
                break;
            case STARTCOMMENT:
                icommentLine = iline; /* track starting comment line */
                sstate = s_startCommentHandler(iinput);
                break;
            case INCOMMENT:
                sstate = s_inCommentHandler(iinput);
                break;
            case ENDCOMMENT:
                sstate = s_endCommentHandler(iinput);
                break;
            case SINGLESTR:
                sstate = s_singleSTRHandler(iinput);
                break;
            case DOUBLESTR:
                sstate = s_doubleSTRHandler(iinput);
                break;
            case IGNORESINGLE:
                sstate = s_ignoreSingleHandler(iinput);
                break;
            case IGNOREDOUBLE:
                sstate = s_ignoreDoubleHandler(iinput);
                break;
        }
    }
    /* handle false startcomment */
    if (sstate == STARTCOMMENT) putchar('/'); 

    /* raise error for unterminated comments */
    if (sstate == INCOMMENT || sstate == ENDCOMMENT) {
        fprintf(stderr, "Error: line %d: unterminated comment\n", icommentLine);
        return EXIT_FAILURE;
    }

    return 0;
}
