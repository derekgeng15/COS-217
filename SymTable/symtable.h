/*--------------------------------------------------------------------*/
/* symtable.h                                                         */
/* Author: Derek Geng                                                 */
/*--------------------------------------------------------------------*/
#ifndef SYMTABLE_INCLUDED
#define SYMTABLE_INCLUDED
#include <stddef.h>

/* ADT SymTableT for client to use */
typedef struct SymTable *SymTable_T;

/* returns address of new SymTable */
SymTable_T SymTable_new(void);

/* frees all memory with oSymTable */
void SymTable_free(SymTable_T oSymTable);

/* returns number of entries in oSymTable */
size_t SymTable_getLength(SymTable_T oSymTable);

/* inserts entry in oSymTable of [pcKey, pvValue] */
/* returns 1 if succesful, 0 if key already exists */
int SymTable_put(SymTable_T oSymTable,
    const char *pcKey, const void *pvValue);

/* replaces existing key pcKey with value pvValue */
/* returns old value if key exists in oSymTable, NULL if key did not exist */
void *SymTable_replace(SymTable_T oSymTable,
    const char *pcKey, const void *pvValue);

/* returns 1 if oSymTable contains pcKey, otherwise returns 0 */
int SymTable_contains(SymTable_T oSymTable, const char *pcKey);

/* returns value of binding pcKey in oSymTable, NULL if does not contain */
void *SymTable_get(SymTable_T oSymTable, const char *pcKey);

/* removes pcKey from oSymTable. */
/* returns value of pcKey if binding exists, otherwise NULL */
void *SymTable_remove(SymTable_T oSymTable, const char *pcKey);

/* calls pfApply with parameter pvExtra on every binding in oSymTable*/
void SymTable_map(SymTable_T oSymTable,
    void (*pfApply)(const char *pcKey, void *pvValue, void *pvExtra),
    const void *pvExtra);
#endif