import 'package:leetcode_solutions/fizzbuzz.dart';
import 'package:test/test.dart';

void main() {
  final data = [
    (input: 3, expected: ['1', '2', 'Fizz']),
    (input: 5, expected: ['1', '2', 'Fizz', '4', 'Buzz']),
    (
      input: 15,
      expected: [
        "1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", // preformatted
        "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz"
      ]
    ),
  ];
  final fizzBuzz = FizzBuzz();
  for (final (i, testData) in data.indexed) {
    test('FizzBuzz #$i n=${testData.input}', () {
      final stopwatch = Stopwatch();
      stopwatch.start();
      final result = fizzBuzz.fizzBuzz(testData.input);
      stopwatch.stop();
      print('Elapsed time: ${stopwatch.elapsedMicroseconds} microseconds');
      expect(result, testData.expected);
    });
  }
}
