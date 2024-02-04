// https://leetcode.com/problems/richest-customer-wealth/description/
class RichestCustomerWealthSolution {
  int maximumWealth(List<List<int>> accounts) {
    var maxWealth = 0;
    for (final customerAccounts in accounts) {
      final customerWealth =
          customerAccounts.fold<int>(0, (sum, value) => sum + value);
      if (customerWealth > maxWealth) maxWealth = customerWealth;
    }
    return maxWealth;
  }
}
