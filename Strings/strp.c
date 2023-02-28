/*--------------------------------------------------------------------*/
/* strp.c                                                             */
/* Author: Derek Geng                                                 */
/*--------------------------------------------------------------------*/
#include "str.h"

size_t Str_getLength(const char *pcSrc) {
    const char *pcEnd; /* pointer to end of pcSrc */
    assert(pcSrc != NULL);
    pcEnd = pcSrc;
    /* increment pcEnd until null value*/
    while (*pcEnd != '\0')
        pcEnd++;
    /* return difference as length of pcSrc */
    return (size_t)(pcEnd - pcSrc); 
}

char *Str_copy(char *pcDest, const char *pcSrc) {
    char *pcTempDest; /* temp pointer to pcDest */
    assert(pcDest != NULL && pcSrc != NULL);
    pcTempDest = pcDest;
    /* while pcSrc isn't null, copy pcSrc into pcTempDest */
    while (*pcSrc != '\0')
        *(pcTempDest++) = *(pcSrc++);
    /* add null terminating char and return pcDest */
    *pcTempDest = '\0';
    return pcDest;
}

char *Str_concat(char *pcDest, const char *pcSrc) {
    char *pcTempDest; /* temp pointer to pcDest */
    assert(pcDest != NULL && pcSrc != NULL);
    pcTempDest = pcDest;
    /* move pcTempDest to end of pcDest */
    while (*pcTempDest != '\0')
        pcTempDest++;
    /* copy pcSrc to end of pcTempDest */
    while (*pcSrc != '\0')
        *(pcTempDest++) = *(pcSrc++);
    /* add null terminating value and return pcDest */
    *pcTempDest = '\0';
    return pcDest;
}

int Str_compare(const char *pcS1, const char *pcS2) {
    assert(pcS1 != NULL && pcS2 != NULL);
    /* iterate until pcS1 and pcS2 are different */
    while (*pcS1 == *pcS2) {
        /* both have null terminating values, so they are equal */
        if (*pcS1 == '\0')
            return 0;
        pcS1++, pcS2++;
    }
    /* return difference in characters to determine order */
    return (int)(*pcS1 - *pcS2);
}

char *Str_search(const char *pcHaystack, const char *pcNeedle) {
    const char * pcTempHaystack; /* temp pointer to haystack*/
    const char * pcTempNeedle; /* temp pointer to needle */
    assert(pcHaystack != NULL && pcNeedle != NULL);
    pcTempHaystack = pcHaystack;
    pcTempNeedle = pcNeedle;
    if (*pcNeedle == '\0') /* handle empty needle edgecase */
        return (char *)pcHaystack;

    /* iterate through all characters in pcHaystack */
    while (*pcHaystack != '\0') {
        pcTempNeedle = pcNeedle;
        pcTempHaystack = pcHaystack;
        /* increment until end of one string or no longer matching */
        while (*pcTempHaystack != '\0' && *pcTempNeedle != '\0' 
                && *pcTempHaystack == *pcTempNeedle)
            pcTempNeedle++, pcTempHaystack++;
        /* if end of pcTempNeedle is reached, return address of match */
        if (*pcTempNeedle == '\0')
            return (char *)(pcHaystack);
        pcHaystack++;
    }
    /* pcNeedle doesn't exist in haystack */
    return NULL;
}