import 'package:leetcode_solutions/num_of_steps_reduce_to_zero.dart';
import 'package:test/test.dart';

void main() {
  final data = [
    (input: 14, expected: 6),
    (input: 8, expected: 4),
    (input: 123, expected: 12),
  ];
  final solution = NumOfStepsReduceToZero();
  for (final (i, testData) in data.indexed) {
    test('NumOfStepsReduceToZero #$i n=${testData.input}', () {
      final stopwatch = Stopwatch();
      stopwatch.start();
      final result = solution.numberOfSteps(testData.input);
      stopwatch.stop();
      print('Elapsed time: ${stopwatch.elapsedMicroseconds} microseconds');
      expect(result, testData.expected);
    });
  }
}