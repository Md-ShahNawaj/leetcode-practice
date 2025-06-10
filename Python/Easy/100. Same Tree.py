# LeetCode Problem 100: Same Tree
# Difficulty: Easy
# https://leetcode.com/problems/same-tree/

# Definition for a binary tree node.
# class TreeNode(object):
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right

class Solution(object):
    def isSameTree(self, p, q):
        """
        Determines whether two binary trees are the same.

        Two binary trees are considered the same if they are structurally identical,
        and the nodes have the same value.

        :type p: Optional[TreeNode] - root of the first binary tree
        :type q: Optional[TreeNode] - root of the second binary tree
        :rtype: bool - True if the trees are the same, False otherwise
        """

        # Base Case 1: If both nodes are None, trees match up to this point
        if not p and not q:
            return True

        # Base Case 2: If only one of the nodes is None, trees differ in structure
        if not p or not q:
            return False

        # Base Case 3: If node values are different, trees differ in values
        if p.val != q.val:
            return False

        # Recursive Case: Compare left and right subtrees
        return self.isSameTree(p.left, q.left) and self.isSameTree(p.right, q.right)
