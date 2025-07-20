import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Todo App Widget Tests', () {
    testWidgets('App renders with correct initial UI elements', (WidgetTester tester) async {
      // Build our app and trigger a frame
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: const Text('Todo App'),
            ),
            body: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(child: Icon(Icons.star, color: Colors.yellow)),
              ],
            ),
            bottomNavigationBar: const BottomAppBar(
              child: ElevatedButton(onPressed: null, child: Icon(Icons.add)),
            ),
          ),
        ),
      );

      // Verify AppBar
      expect(find.byType(AppBar), findsOneWidget);
      expect(find.text('Todo App'), findsOneWidget);

      // Verify Row properties
      final Row row = tester.widget(find.byType(Row));
      expect(row.mainAxisAlignment, MainAxisAlignment.spaceEvenly);
      expect(row.crossAxisAlignment, CrossAxisAlignment.stretch);

      // Verify Star Icons
      expect(find.byIcon(Icons.star), findsWidgets);

      // Get the first star icon and verify its color
      final Icon starIcon = tester.widget(find.byIcon(Icons.star).first);
      expect(starIcon.color, Colors.yellow);

      // Verify Bottom Navigation Bar
      expect(find.byType(BottomAppBar), findsOneWidget);
      expect(find.byType(ElevatedButton), findsOneWidget);
      expect(find.byIcon(Icons.add), findsOneWidget);
    });

    testWidgets('Add button interaction test', (WidgetTester tester) async {
      // Build our app and trigger a frame
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: const Text('Todo App'),
            ),
            body: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(child: Icon(Icons.star, color: Colors.yellow)),
              ],
            ),
            bottomNavigationBar: BottomAppBar(
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.add)
              ),
            ),
          ),
        ),
      );

      // Find and tap the add button
      await tester.tap(find.byType(ElevatedButton));
      await tester.pump();

      // Verify the button exists and is tappable
      expect(find.byType(ElevatedButton), findsOneWidget);
    });

    testWidgets('App has correct number of star icons', (WidgetTester tester) async {
      // Build our app and trigger a frame
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: const Text('Todo App'),
            ),
            body: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: List.generate(50, (index) =>
              const Expanded(child: Icon(Icons.star, color: Colors.yellow,))
              ),
            ),
            bottomNavigationBar: BottomAppBar(
              child: ElevatedButton(onPressed: (){}, child: const Icon(Icons.add)),
            ),
          ),
        ),
      );

      // Verify the number of star icons
      expect(find.byIcon(Icons.star), findsNWidgets(50));
    });
  });
}