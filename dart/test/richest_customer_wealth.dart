import 'package:leetcode_solutions/richest_customer_wealth.dart';
import 'package:test/test.dart';

void main() {
  final data = {
    [
      [1, 2, 3],
      [3, 2, 1]
    ]: 6,
    [
      [1, 5],
      [7, 3],
      [3, 5]
    ]: 10,
    [
      [2, 8, 7],
      [7, 1, 3],
      [1, 9, 5]
    ]: 17,
  };
  final solution = RichestCustomerWealthSolution();
  test('maximumWealth', () {
    data.forEach((input, output) {
      expect(solution.maximumWealth(input), output);
    });
  });
}
