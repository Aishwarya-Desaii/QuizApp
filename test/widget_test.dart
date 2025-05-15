import 'package:flutter_test/flutter_test.dart';
import 'package:quiz_app/main.dart';

void main() {
  testWidgets('CategoryPage displays all quiz categories',
      (WidgetTester tester) async {
    // Build the app.
    await tester.pumpWidget(const MyApp());

    // Verify the AppBar title is “Select Category”
    expect(find.text('Select Category'), findsOneWidget);

    // Verify that each category button is present
    for (final category in ['Coding', 'Sports', 'Maths', 'English']) {
      expect(find.text(category), findsOneWidget);
    }
  });
}
