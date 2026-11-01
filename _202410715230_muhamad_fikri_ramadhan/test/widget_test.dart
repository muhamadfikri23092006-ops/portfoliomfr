import 'package:flutter_test/flutter_test.dart';
import 'package:_202410715230_muhamad_fikri_ramadhan/main.dart';

void main() {
  testWidgets('Portfolio app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const FriedSinlaePortfolioApp());

    // Verify key portfolio items render
    expect(find.text('friedsinlae.com'), findsOneWidget);
    expect(find.text('Fried Sinlae'), findsOneWidget);
  });
}
