#include <stdio.h>

size_t Str_getLength(const char pcSrc[])
{
    size_t uLength = 0;
    assert(pcSrc != NULL);
    while (pcSrc[uLength] != '\0')
        uLength++;
    return uLength;
}


char[] Str_copy(char pcDest[], const char pcSrc[]) {
    assert(pcDest != NULL && pcSrc != NULL);
    assert(Str_getLength(pcDest) < Str_getLength(pcSrc));
    int i = 0;
    while (pcSrc[i] != '\0') {
        pcDest[i] = pcSrc[i];
        i++;
    }
    return pcDest;
}