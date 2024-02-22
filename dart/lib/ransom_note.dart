// Given two strings ransomNote and magazine, return true if ransomNote can be constructed by using the letters from magazine and false otherwise.
// Each letter in magazine can only be used once in ransomNote.

// Example 1:
// Input: ransomNote = "a", magazine = "b"
// Output: false

// Example 2:
// Input: ransomNote = "aa", magazine = "ab"
// Output: false

// Example 3:
// Input: ransomNote = "aa", magazine = "aab"
// Output: true

// Constraints:
// 1 <= ransomNote.length, magazine.length <= 105
// ransomNote and magazine consist of lowercase English letters.
class RansomNote {
  bool canConstruct(String ransomNote, String magazine) {
    final magazineCharCount = <int, int>{}; // char code unit, count
    for (final char in magazine.codeUnits) {
      magazineCharCount.update(char, (value) => ++value, ifAbsent: () => 1);
    }
    for (final char in ransomNote.codeUnits) {
      if ((magazineCharCount[char] ?? 0) == 0) {
        return false;
      }
      magazineCharCount.update(char, (value) => --value, ifAbsent: () => 0);
    }
    return true;
  }
}
