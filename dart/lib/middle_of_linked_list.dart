// Given the head of a singly linked list, return the middle node of the linked list.
// If there are two middle nodes, return the second middle node.
//
// Example 1:
// Input: head = [1,2,3,4,5]
// Output: [3,4,5]
// Explanation: The middle node of the list is node 3.
//
// Example 2:
// Input: head = [1,2,3,4,5,6]
// Output: [4,5,6]
// Explanation: Since the list has two middle nodes with values 3 and 4, we return the second one.
//
// Constraints:
// The number of nodes in the list is in the range [1, 100].
// 1 <= Node.val <= 100
class MiddleOfLinkedList {
  ListNode? middleNode(ListNode? head) {
    var middle = head;
    var end = head;
    while (end?.next != null) {
      middle = middle?.next;
      end = end?.next?.next;
    }
    return middle;
  }
}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}