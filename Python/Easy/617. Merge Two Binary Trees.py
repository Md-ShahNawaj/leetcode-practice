# Demo: Using `insert_bst` to build and inspect a Binary Search Tree

# 1. Define the Node class
class Node:
    def __init__(self, value):
        self.value = value
        self.left  = None
        self.right = None
    def __repr__(self):
        return f"Node({self.value})"

# 2. Define the insertion function
def insert_bst(root, value):
    if root is None:
        return Node(value)
    if value < root.value:
        root.left = insert_bst(root.left, value)
    else:
        root.right = insert_bst(root.right, value)
    return root

# 3. Build a BST by inserting a sequence of values
values = [10, 5, 15, 3, 7]
root = None
for v in values:
    root = insert_bst(root, v)

# 4. Define an in-order traversal to check the tree structure
def inorder(node):
    if node is None:
        return []
    return inorder(node.left) + [node.value] + inorder(node.right)

# 5. Print results
print("Inserted values:", values)
print("In-order traversal of the BST:", inorder(root))
print("Root node:", root)
print("Left child of root:", root.left)
print("Right child of root:", root.right)
