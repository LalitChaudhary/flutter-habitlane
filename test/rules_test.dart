import 'package:flutter_test/flutter_test.dart';
import 'package:habitlane/domain/rules.dart';

void main() {
  test('streak advances and then stops at the cap', () {
    expect(nextStreak(0), 1);
    expect(capped(12, 12), 12);
    expect(nextStreak(-4), 0);
  });
}
