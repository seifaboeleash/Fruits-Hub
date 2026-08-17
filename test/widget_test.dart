import 'package:flutter_test/flutter_test.dart';
import 'package:fruits_hub/core/services/shared_preferences_singleton.dart';
import 'package:fruits_hub/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  testWidgets('App initializes successfully', (WidgetTester tester) async {
    SharedPreferences.setMockInitialValues({});
    await Prefs.init();
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();
    expect(find.byType(MyApp), findsOneWidget);
  });
}
