/*--------------------------------------------------------------------*/
/* checkerDT.c                                                        */
/* Author:                                                            */
/*--------------------------------------------------------------------*/

#include <assert.h>
#include <stdio.h>
#include <string.h>
#include "checkerDT.h"
#include "dynarray.h"
#include "path.h"



/* see checkerDT.h for specification */
boolean CheckerDT_Node_isValid(Node_T oNNode) {
   Node_T oNParent;
   Path_T oPNPath;
   Path_T oPPPath;

   /* Sample check: a NULL pointer is not a valid node */
   if(oNNode == NULL) {
      fprintf(stderr, "A node is a NULL pointer\n");
      return FALSE;
   }

   /* Sample check: parent's path must be the longest possible
      proper prefix of the node's path */
   oNParent = Node_getParent(oNNode);
   if(oNParent != NULL) {
      oPNPath = Node_getPath(oNNode);
      oPPPath = Node_getPath(oNParent);

      if(Path_getSharedPrefixDepth(oPNPath, oPPPath) !=
         Path_getDepth(oPNPath) - 1) {
         fprintf(stderr, "P-C nodes don't have P-C paths: (%s) (%s)\n",
                 Path_getPathname(oPPPath), Path_getPathname(oPNPath));
         return FALSE;
      }
   }

   return TRUE;
}

/*
   Performs a pre-order traversal of the tree rooted at oNNode.
   Returns FALSE if a broken invariant is found and
   returns TRUE otherwise.

   You may want to change this function's return type or
   parameter list to facilitate constructing your checks.
   If you do, you should update this function comment.
*/
static boolean CheckerDT_treeCheck(Node_T oNNode) {
   size_t ulIndex;

   if(oNNode!= NULL) {
      /* Sample check on each node: node must be valid */
      /* If not, pass that failure back up immediately */
      if(!CheckerDT_Node_isValid(oNNode))
         return FALSE;
      /* Recur on every child of oNNode */
      for(ulIndex = 0; ulIndex < Node_getNumChildren(oNNode); ulIndex++)
      {
         Node_T oNChild = NULL;
         Node_T oNNextChild = NULL;
         Path_T pPChildPath = NULL;
         int iStatus = Node_getChild(oNNode, ulIndex, &oNChild);
         if(iStatus != SUCCESS) {
            fprintf(stderr, "getNumChildren claims more children than getChild returns\n");
            return FALSE;
         }
         pPChildPath = Node_getPath(oNChild);
         iStatus = Node_getChild(oNNode, ulIndex +1, &oNNextChild);
         if(iStatus == SUCCESS){
            Path_T pPNextChildPath = Node_getPath(oNNextChild);
            if(!Node_compare(oNChild, oNNextChild)) {
               /* if there are two of the same child */
               fprintf(stderr, "DT_insert places a node that already exists into the tree\n");
               return FALSE;
            }

            /* check for lexographic ordering */
            if(Path_comparePath(pPChildPath, pPNextChildPath) > 0) {
               fprintf(stderr, "nodes are not in lexographic order\n");
               return FALSE;
            }
         }
         /* if recurring down one subtree results in a failed check
            farther down, passes the failure back up immediately */
         if(!CheckerDT_treeCheck(oNChild))
            return FALSE;
      }
   }
   return TRUE;
}

/* Return size of the sub-tree by pre-order traversal 
   starting from oNNode */
static size_t CheckerDT_getTreeSize(Node_T oNNode) {
   size_t treeSize = 0;
   size_t ulIndex;
   if (oNNode != NULL) {
      for(ulIndex = 0; ulIndex < Node_getNumChildren(oNNode); ulIndex++)
      {
         Node_T oNChild = NULL;
         int iStatus = Node_getChild(oNNode, ulIndex, &oNChild);
         if (iStatus != SUCCESS) {
            fprintf(stderr, "getNumChildren claims more children than getChild returns\n");
            return FALSE;
         }
         treeSize += getTreeSize(oNChild);
      }
      treeSize++;
   }
   return treeSize;
}
/* see checkerDT.h for specification */
boolean CheckerDT_isValid(boolean bIsInitialized, Node_T oNRoot,
                          size_t ulCount) {
   
   /* Sample check on a top-level data structure invariant:
      if the DT is not initialized, its count should be 0. */
   if(!bIsInitialized)
      if(ulCount != 0) {
         fprintf(stderr, "Not initialized, but count is not 0\n");
         return FALSE;
      }
   /* check if ulCount is correct */
   if (ulCount != CheckerDT_getTreeSize(oNRoot)) {
      fprintf(stderr, "The DT's node count does not match the actual number of nodes in the tree\n");
      return FALSE;
   }


   /* Now checks invariants recursively at each node from the root. */
   return CheckerDT_treeCheck(oNRoot);
}
