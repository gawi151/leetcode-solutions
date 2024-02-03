import 'package:leetcode_solutions/invert_binary_tree.dart';
import 'package:test/test.dart';

void main() {
  final solution = InvertBinaryTree();
  final data = {
    TreeNode(): TreeNode(),
    TreeNode(
      4,
      TreeNode(2, TreeNode(1), TreeNode(3)),
      TreeNode(7, TreeNode(6), TreeNode(9)),
    ): TreeNode(
      4,
      TreeNode(7, TreeNode(9), TreeNode(6)),
      TreeNode(2, TreeNode(3), TreeNode(1)),
    ),
  };
  var i = 0;
  data.forEach((input, expected) {
    test('invertTree #$i', () {
      expect(solution.invertTree(input), expected);
    });
    i++;
  });
}
