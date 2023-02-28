/*--------------------------------------------------------------------*/
/* stra.c                                                             */
/* Author: Derek Geng                                                 */
/*--------------------------------------------------------------------*/
#include "str.h"

size_t Str_getLength(const char pcSrc[])
{
    size_t uLength = 0; /* length of pcSrc */
    assert(pcSrc != NULL);
    /* increment pcSrc until null value */
    while (pcSrc[uLength] != '\0')
        uLength++;
    return uLength; /* return length */
}

char *Str_copy(char pcDest[], const char pcSrc[]) {
    int i = 0; /* iterator for pcDest and pcSrc */
    assert(pcDest != NULL && pcSrc != NULL);
    /* increment until end of pcSrc */
    while (pcSrc[i] != '\0') {
        /* copy pcSrc into pcDest */
        pcDest[i] = pcSrc[i];
        i++;
    }
    pcDest[i] = '\0'; /* add null terminating char */
    return pcDest;
}

char *Str_concat(char pcDest[], const char pcSrc[]) {
    int i = 0; /* iterator for pcDest */
    int j = 0; /* iterator for pcSrc */
    assert(pcDest != NULL && pcSrc != NULL);
    while (pcDest[i] != '\0') i++; /* find end of pcDest */
    /* copy pcSrc to the end of pcDest */
    while (pcSrc[j] != '\0') pcDest[i++] = pcSrc[j++]; 
    pcDest[i] = '\0';
    return pcDest; /* return pcDest */
}

int Str_compare(const char pcS1[], const char pcS2[]) {
    int i = 0; /* iterator for pcS1 and pcS2 */
    assert(pcS1 != NULL && pcS2 != NULL);
    /* iterate until strings are different */
    while (pcS1[i] == pcS2[i]) {
        /* reached end of both strings, thus they are equal */
        if (pcS1[i] == '\0')
            return 0;
        i++;
    }
    /* return difference in characters to determine order */
    return (int)(pcS1[i] - pcS2[i]);
}

char *Str_search(const char pcHaystack[], const char pcNeedle[]) {
    int i = 0; /* iterator for pcHaystack */
    int j = 0; /* iterator for pcNeedle*/
    assert(pcHaystack != NULL && pcNeedle != NULL);
    if (pcNeedle[0] == '\0') /* empty needle edgecase */
        return (char *)pcHaystack;
    /* iterate through all characters in pcHaystack */
    while (pcHaystack[i] != '\0') {
        j = 0;
        /* increment until end of one string or no longer matching */
        while (pcNeedle[j] != '\0' && pcHaystack[i + j] != '\0' 
                && pcHaystack[i + j] == pcNeedle[j])
            j++;
        /* if end of pcNeedle is reached, return address of match */
        if (pcNeedle[j] == '\0')
            return (char *)(&pcHaystack[i]);
        i++;
    }
    /* pcNeedle doesn't exist in haystack */
    return NULL;
}
