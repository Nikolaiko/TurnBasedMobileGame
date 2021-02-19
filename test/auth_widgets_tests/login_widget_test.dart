import 'package:flutter_test/flutter_test.dart';
import 'package:turn_based_game/auth_process/login_screen_widget.dart';

void main() {
  
  testWidgets('MyWidget has a title and message', (WidgetTester tester) async {
    await tester.pumpWidget(LoginScreenWidget());

    final titleFinder = find.text('Login User');
    expect(titleFinder, findsOneWidget);    
  });
}