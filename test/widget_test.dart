import 'package:assignment_app/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Home navigates to About then Contact', (tester) async {
    await tester.pumpWidget(const AssignmentApp());

    expect(find.text('Home Page'), findsOneWidget);
    await tester.tap(find.text('Go to About'));
    await tester.pumpAndSettle();

    expect(find.text('About Page'), findsOneWidget);
    await tester.tap(find.text('Go to Contact'));
    await tester.pumpAndSettle();

    expect(find.text('Contact Page'), findsOneWidget);
  });
}
