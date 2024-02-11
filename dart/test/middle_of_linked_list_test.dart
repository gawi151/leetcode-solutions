import 'package:leetcode_solutions/middle_of_linked_list.dart';
import 'package:test/test.dart';

void main() {
  final data = [
    (
      input: _createLinkedList([1, 2, 3, 4, 5]),
      expected: _createLinkedList([3, 4, 5])
    ),
    (
      input: _createLinkedList([1, 2, 3, 4, 5, 6]),
      expected: _createLinkedList([4, 5, 6])
    ),
  ];
  final solution = MiddleOfLinkedList();
  for (final (i, testData) in data.indexed) {
    test('MiddleOfLinkedList #$i', () {
      final stopwatch = Stopwatch();
      stopwatch.start();
      final result = solution.middleNode(testData.input);
      stopwatch.stop();
      print('Elapsed time: ${stopwatch.elapsedMicroseconds} microseconds');
      expect(result?.val, testData.expected.val);
    });
  }
}

ListNode _createLinkedList(List<int> values) {
  final head = ListNode(values.first);
  var current = head;
  for (var i = 1; i < values.length; ++i) {
    current.next = ListNode(values[i]);
    current = current.next!;
  }
  return head;
}
