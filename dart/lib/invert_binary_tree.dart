// https://leetcode.com/problems/invert-binary-tree/

/// Definition for a binary tree node.
/// class TreeNode {
///   int val;
///   TreeNode? left;
///   TreeNode? right;
///   TreeNode([this.val = 0, this.left, this.right]);
/// }
class InvertBinaryTree {
  TreeNode? invertTree(TreeNode? root) {
    if (root == null) return null;
    invertTree(root.left);
    invertTree(root.right);
    swap(root);
    return root;
  }

  TreeNode? swap(TreeNode root) {
    final tmp = root.left;
    root.left = root.right;
    root.right = tmp;
    return root;
  }
}

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);

  @override
  String toString() {
    return 'TreeNode{val: $val, left: $left, right: $right}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is TreeNode &&
              runtimeType == other.runtimeType &&
              val == other.val &&
              left == other.left &&
              right == other.right;

  @override
  int get hashCode => val.hashCode ^ left.hashCode ^ right.hashCode;
}
