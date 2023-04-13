/*--------------------------------------------------------------------*/
/* checkerFT.h                                                        */
/* Author: Christopher Moretti                                        */
/*--------------------------------------------------------------------*/

#ifndef CHECKER_INCLUDED
#define CHECKER_INCLUDED

#include "nodeFT.h"


/*
   Returns TRUE if oNNode represents a directory or file entry
   in a valid state, or FALSE otherwise. Prints explanation
   to stderr in the latter case.
*/
boolean CheckerFT_Node_isValid(Node_T oNNode);

/*
   Returns TRUE if the hierarchy is in a valid state or FALSE
   otherwise.  Prints explanation to stderr in the latter case.
   The data structure's validity is based on a boolean
   bIsInitialized indicating whether the FT is in an initialized
   state, a Node_T oNRoot representing the root of the hierarchy, and
   a size_t ulCount representing the total number of directories in
   the hierarchy.
*/
boolean CheckerFT_isValid(boolean bIsInitialized,
                          Node_T oNRoot,
                          size_t ulCount);

#endif
