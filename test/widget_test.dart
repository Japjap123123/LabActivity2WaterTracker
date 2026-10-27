import 'package:flutter_test/flutter_test.dart';
import 'package:pasolabactivity/main.dart';

void main() {
  testWidgets('Water tracker shows goal', (WidgetTester tester) async {
    await tester.pumpWidget(const WaterTrackerApp());

    expect(find.text('Stay Hydrated!'), findsOneWidget);
    expect(find.text('8'), findsOneWidget);
  });
}