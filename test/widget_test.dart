import 'package:flutter_test/flutter_test.dart';
import 'package:habitlane/main.dart';

void main() {
  testWidgets('demo profile opens HabitLane', (tester) async {
    await tester.pumpWidget(const HabitLaneApp());
    await tester.tap(find.text('Open HabitLane'));
    await tester.pumpAndSettle();
    expect(find.text('Today'), findsOneWidget);
    expect(find.textContaining('streak'), findsWidgets);
  });
}
