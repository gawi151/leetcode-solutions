import 'package:leetcode_solutions/ransom_note.dart';
import 'package:test/test.dart';

void main() {
  final data = [
    (ransomNote: 'a', magazine: 'b', expected: false),
    (ransomNote: 'aa', magazine: 'ab', expected: false),
    (ransomNote: 'aa', magazine: 'aab', expected: true),
  ];

  final solution = RansomNote();
  for (final (i, testData) in data.indexed) {
    test('RansomNote #$i', () {
      final stopwatch = Stopwatch();
      stopwatch.start();
      final result =
          solution.canConstruct(testData.ransomNote, testData.magazine);
      stopwatch.stop();
      print('Elapsed time: ${stopwatch.elapsedMicroseconds} microseconds');
      expect(result, testData.expected);
    });
  }
}
