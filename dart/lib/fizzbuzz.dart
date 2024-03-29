// Given an integer n, return a string array answer (1-indexed) where:
// answer[i] == "FizzBuzz" if i is divisible by 3 and 5.
// answer[i] == "Fizz" if i is divisible by 3.
// answer[i] == "Buzz" if i is divisible by 5.
// answer[i] == i (as a string) if none of the above conditions are true.
//
// Example 1:
//
// Input: n = 3
// Output: ["1","2","Fizz"]
// Example 2:
//
// Input: n = 5
// Output: ["1","2","Fizz","4","Buzz"]
// Example 3:
//
// Input: n = 15
// Output: ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"]
//
// Constraints:
// 1 <= n <= 10^4
class FizzBuzz {
  List<String> fizzBuzz(int n) {
    final list = <String>[];
    for (var i = 0; i < n; ++i) {
      final buffer = StringBuffer();
      final num = i + 1;
      if (num % 3 == 0) buffer.write('Fizz');
      if (num % 5 == 0) buffer.write('Buzz');
      list.add(buffer.isEmpty ? '$num' : buffer.toString());
    }
    return list;
  }
}
