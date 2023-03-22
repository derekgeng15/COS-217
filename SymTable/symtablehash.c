/*--------------------------------------------------------------------*/
/* symtablehash.c                                                     */
/* Author: Derek Geng                                                 */
/*--------------------------------------------------------------------*/
#include "symtable.h"
#include <assert.h>
#include <string.h>
#include <stdlib.h>

/* array holding bucket sizes for each resize */
static const size_t numBuckets[] = {509, 1021, 2039, 4093, 8191, 16381, 32749, 65521};

/* number of bucket sizes */
static const size_t MAX_BUCKET_COUNT = sizeof(numBuckets)/sizeof(numBuckets[0]);

/* separate-chaining node for each binding in symtable */
struct SymTableNode {
    /* key of binding */
    char *pcKey; 
    /* value of binding */
    void *pvValue; 
    /* pointer to next node */
    struct SymTableNode *pstNext; 
};

/* separate-chaining hashtable implementation of symtable */
struct SymTable {
    /* number of bindings */
    size_t length; 
    /* index of bucket size */
    size_t bIndex;
    /* array of pointers to the start of each chain */
    struct SymTableNode ** bucket;
};

/* Return a hash code for pcKey that is between 0 and uBucketCount-1,
   inclusive. */
static size_t SymTable_hash(const char *pcKey, size_t uBucketCount)
{
   const size_t HASH_MULTIPLIER = 65599;
   size_t u;
   size_t uHash = 0;

   assert(pcKey != NULL);

   for (u = 0; pcKey[u] != '\0'; u++)
      uHash = uHash * HASH_MULTIPLIER + (size_t)pcKey[u];

   return uHash % uBucketCount;
}

/* helper function to resize oSymTable */
static void SymTable_resize(SymTable_T oSymTable) {
    struct SymTableNode **newBucket;
    struct SymTableNode *pstCurr;
    struct SymTableNode *pstNext;
    size_t newHash;
    size_t i;
    assert(oSymTable != NULL);
    /* allocate new buckets */
    newBucket = (struct SymTableNode **) malloc(numBuckets[oSymTable->bIndex + 1] * sizeof(struct SymTableNode *));
    if (newBucket == NULL) return; /* return if fail allocation */
    for (i = 0; i < numBuckets[oSymTable->bIndex + 1]; i++)
        newBucket[i] = NULL;
    /* iterate through all bindings */
    for (i = 0; i < numBuckets[oSymTable->bIndex]; i++) {
        pstCurr = oSymTable->bucket[i];
        while (pstCurr != NULL) {
            /* find new hash */
            newHash = SymTable_hash(pstCurr->pcKey, numBuckets[oSymTable->bIndex + 1]);
            pstNext = pstCurr->pstNext; /* save next node */
            /* set curr node next to new bucket first */
            pstCurr->pstNext = newBucket[newHash];
            newBucket[newHash] = pstCurr; /* set curr to new first */
            pstCurr = pstNext; /* go to next node */
        }
    }
    oSymTable->bIndex++;
    free(oSymTable->bucket); /* free old buckets */
    oSymTable->bucket = newBucket;
}

SymTable_T SymTable_new(void) {
    SymTable_T oSymTable;
    size_t i;
    oSymTable = (SymTable_T)malloc(sizeof(struct SymTable));
    if (oSymTable == NULL) 
        return NULL;
    oSymTable->length = 0;
    oSymTable->bIndex = 0; /* start at first bucket ct */
    oSymTable->bucket = (struct SymTableNode **) malloc(numBuckets[oSymTable->bIndex] * sizeof(struct SymTableNode *));
    if (oSymTable->bucket == NULL) return NULL; /* failed allocation */
    for (i = 0; i < numBuckets[oSymTable->bIndex]; i++)
        oSymTable->bucket[i] = NULL;
    return oSymTable;
}

void SymTable_free(SymTable_T oSymTable) {
    struct SymTableNode *pstCurr;
    struct SymTableNode *pstNext;
    size_t i;
    assert(oSymTable != NULL);
    /* iterate through all buckets */
    for (i = 0; i < numBuckets[oSymTable->bIndex]; i++) {
        /* start from first node */
        pstCurr = oSymTable->bucket[i];
        /* clear each node in LL until NULL */
        while (pstCurr != NULL) {
            /* save next node */
            pstNext = pstCurr->pstNext;
            free(pstCurr->pcKey); /* free stored key */
            free(pstCurr); /* free current node */
            /* set to next node */
            pstCurr = pstNext;
        }
    }
    free(oSymTable->bucket);
    free(oSymTable);
}

size_t SymTable_getLength(SymTable_T oSymTable) {
    assert(oSymTable != NULL);
    return oSymTable->length;
}

int SymTable_put(SymTable_T oSymTable, const char *pcKey, const void *pvValue) {
    struct SymTableNode *pstCurr;
    size_t hash;
    assert(oSymTable != NULL);
    assert(pcKey != NULL);
    hash = SymTable_hash(pcKey, numBuckets[oSymTable->bIndex]);
    pstCurr = oSymTable->bucket[hash];
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
    pstCurr->pstNext = oSymTable->bucket[hash];
    oSymTable->bucket[hash] = pstCurr;
    oSymTable->length++; /* increment length */
    /* check if number of bindings exceed bucket count */
    if (oSymTable->length > numBuckets[oSymTable->bIndex] 
        && oSymTable->bIndex + 1 < MAX_BUCKET_COUNT)
        SymTable_resize(oSymTable);
    return 1; /* successful put operation */
}

void *SymTable_replace(SymTable_T oSymTable, const char *pcKey, const void *pvValue) {
    struct SymTableNode *pstCurr;
    void *pvOldValue;
    assert(oSymTable != NULL);
    assert(pcKey != NULL);
    pstCurr = oSymTable->bucket[SymTable_hash(pcKey, numBuckets[oSymTable->bIndex])];
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
    pstCurr = oSymTable->bucket[SymTable_hash(pcKey, numBuckets[oSymTable->bIndex])];
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
    pstCurr = oSymTable->bucket[SymTable_hash(pcKey, numBuckets[oSymTable->bIndex])];
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
    size_t hash;
    void *pvValue;
    assert(oSymTable != NULL);
    assert(pcKey != NULL);
    /* check if table is empty */
    if (oSymTable->length == 0)
        return NULL;
    /* check if first key is a match */
    hash = SymTable_hash(pcKey, numBuckets[oSymTable->bIndex]);
    if (oSymTable->bucket[hash] == NULL) return NULL;
    if (strcmp(pcKey, oSymTable->bucket[hash]->pcKey) == 0) {
        /* save value within key */
        pvValue = oSymTable->bucket[hash]->pvValue; 
        pstCurr = oSymTable->bucket[hash];
        /* set new first */ 
        oSymTable->bucket[hash] = oSymTable->bucket[hash]->pstNext;
        /* free memory associated with curr node */
        free(pstCurr->pcKey);
        free(pstCurr);
        oSymTable->length--; /* decrement length */
        return pvValue; /* return stored value */
    }
    pstCurr = oSymTable->bucket[hash]->pstNext;
    pstPrev = oSymTable->bucket[hash];
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
    size_t i;
    assert(oSymTable != NULL);
    assert(pfApply != NULL);
    /* iterate through entire symbol table */
    for (i = 0; i < numBuckets[oSymTable->bIndex]; i++) {
        pstCurr = oSymTable->bucket[i];
        while (pstCurr != NULL) {
            /* apply pfApply */
            (*pfApply)(pstCurr->pcKey, pstCurr->pvValue, (void*)pvExtra);
            pstCurr = pstCurr->pstNext;
        }
    }
}
