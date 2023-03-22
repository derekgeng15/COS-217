/*--------------------------------------------------------------------*/
/* symtablelist.c                                                     */
/* Author: Derek Geng                                                 */
/*--------------------------------------------------------------------*/
#include "symtable.h"
#include <assert.h>
#include <string.h>
#include <stdlib.h>

/* linked list node for each binding within SymTable */
struct SymTableNode {
    /* key of binding */
    char *pcKey; 
    /* value of binding */
    void *pvValue; 
    /* pointer to next node */
    struct SymTableNode *pstNext; 
};

/* linked list implementation of symtable */
struct SymTable {
    /* number of bindings */
    size_t length; 
    /* start of linked list */
    struct SymTableNode *pstFirst; 
};

SymTable_T SymTable_new(void) {
    SymTable_T oSymTable;
    oSymTable = (SymTable_T)malloc(sizeof(struct SymTable));
    if (oSymTable == NULL) 
        return NULL;
    oSymTable->length = 0;
    oSymTable->pstFirst = NULL;
    return oSymTable;
}

void SymTable_free(SymTable_T oSymTable) {
    struct SymTableNode *pstCurr;
    struct SymTableNode *pstNext;
    assert(oSymTable != NULL);
    /* start from first node */
    pstCurr = oSymTable->pstFirst;
    /* clear each node in LL until NULL */
    while (pstCurr != NULL) {
        /* save next node */
        pstNext = pstCurr->pstNext;
        free(pstCurr->pcKey); /* free stored key */
        free(pstCurr); /* free current node */
        /* set to next node */
        pstCurr = pstNext;
    }
    free(oSymTable);
}

/* returns length of oSymTable */
size_t SymTable_getLength(SymTable_T oSymTable) {
    assert(oSymTable != NULL);
    return oSymTable->length;
}

int SymTable_put(SymTable_T oSymTable, const char *pcKey, const void *pvValue) {
    struct SymTableNode *pstCurr;
    assert(oSymTable != NULL);
    assert(pcKey != NULL);
    /* assert(pvValue != NULL); */
    pstCurr = oSymTable->pstFirst;
    /* iterate through entire symbol table */
    while (pstCurr != NULL) {
        /* check for existing key */
        if (strcmp(pcKey, pstCurr->pcKey) == 0) 
            return 0;
        pstCurr = pstCurr->pstNext;
    }
    pstCurr = (struct SymTableNode*)malloc(sizeof(struct SymTableNode));
    if (pstCurr == NULL) return 0; /* failed allocation of node */
    /* make deep copy of pckey */
    pstCurr->pcKey = (char *)malloc(sizeof(char) * (strlen(pcKey) + 1));
    if (pstCurr->pcKey == NULL) return 0; /* failed allocation of key */
    strcpy(pstCurr->pcKey, pcKey);
    pstCurr->pvValue = (void *)pvValue; /* copy pcValue into node */
    /* point pstCurr to first and set as new first */
    pstCurr->pstNext = oSymTable->pstFirst;
    oSymTable->pstFirst = pstCurr;
    oSymTable->length++; /* increment length */
    return 1; /* successful put operation */
}

void *SymTable_replace(SymTable_T oSymTable, const char *pcKey, const void *pvValue) {
    struct SymTableNode *pstCurr;
    void *pvOldValue;
    assert(oSymTable != NULL);
    assert(pcKey != NULL);
    pstCurr = oSymTable->pstFirst;
    /* iterate through entire symbol table */
    while (pstCurr != NULL) {
        /* check for existing key */
        if (strcmp(pcKey, pstCurr->pcKey) == 0) {
            pvOldValue = pstCurr->pvValue; /* store old value */
            pstCurr->pvValue = (void *)pvValue; /* replace with new value */
            return pvOldValue; /* return old value */
        }
        pstCurr = pstCurr->pstNext;
    }
    return NULL;
}

int SymTable_contains(SymTable_T oSymTable, const char *pcKey) {
    struct SymTableNode *pstCurr;
    assert(oSymTable != NULL);
    assert(pcKey != NULL);
    pstCurr = oSymTable->pstFirst;
    /* iterate through entire symbol table */
    while (pstCurr != NULL) {
        /* check for existing key */
        if (strcmp(pcKey, pstCurr->pcKey) == 0)
            return 1; /* contains key */
        pstCurr = pstCurr->pstNext;
    }
    return 0; /* does not contain key */
}

void *SymTable_get(SymTable_T oSymTable, const char *pcKey) {
    struct SymTableNode *pstCurr;
    assert(oSymTable != NULL);
    assert(pcKey != NULL);
    pstCurr = oSymTable->pstFirst;
    /* iterate through entire symbol table */
    while (pstCurr != NULL) {
        /* check for existing key */
        if (strcmp(pcKey, pstCurr->pcKey) == 0)
            return pstCurr->pvValue; /* return value within key */
        pstCurr = pstCurr->pstNext;
    }
    return NULL; /* does not contain key */
}

void *SymTable_remove(SymTable_T oSymTable, const char *pcKey) {
    struct SymTableNode *pstCurr;
    struct SymTableNode *pstPrev;
    void *pvValue;
    assert(oSymTable != NULL);
    assert(pcKey != NULL);
    /* check if table is empty */
    if (oSymTable->length == 0)
        return NULL;
    /* check if first key is a match */
    if (strcmp(pcKey, oSymTable->pstFirst->pcKey) == 0) {
        /* save value within key */
        pvValue = oSymTable->pstFirst->pvValue; 
        pstCurr = oSymTable->pstFirst;
        /* set new first */ 
        oSymTable->pstFirst = oSymTable->pstFirst->pstNext;
        /* free memory associated with curr node */
        free(pstCurr->pcKey);
        free(pstCurr);
        oSymTable->length--; /* decrement length */
        return pvValue; /* return stored value */
    }
    pstCurr = oSymTable->pstFirst->pstNext;
    pstPrev = oSymTable->pstFirst;
    /* iterate through entire symbol table */
    while (pstCurr != NULL) {
        /* check for existing key */
        if (strcmp(pcKey, pstCurr->pcKey) == 0) {
            pvValue = pstCurr->pvValue; /* save value within key */
            /* set prev node to point to next node */ 
            pstPrev->pstNext = pstCurr->pstNext;
            /* free memory associated with curr node */
            free(pstCurr->pcKey);
            free(pstCurr);
            oSymTable->length--; /* decrement length */
            return pvValue; /* return stored value */
        }
        pstPrev = pstCurr;
        pstCurr = pstCurr->pstNext;
    }
    return NULL; /* does not contain key */
}

void SymTable_map(SymTable_T oSymTable, 
    void (*pfApply)(const char *pcKey, void *pvValue, void *pvExtra), const void *pvExtra) {
    struct SymTableNode *pstCurr;
    assert(oSymTable != NULL);
    assert(pfApply != NULL);
    pstCurr = oSymTable->pstFirst;
    /* iterate through entire symbol table */
    while (pstCurr != NULL) {
        /* apply pfApply */
        (*pfApply)(pstCurr->pcKey, pstCurr->pvValue, (void*)pvExtra);
        pstCurr = pstCurr->pstNext;
    }
}
