import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:notes_frontend/main.dart';

void main() {
  testWidgets('App boots with Ocean Notes title', (tester) async {
    await tester.pumpWidget(const OceanNotesApp());
    await tester.pumpAndSettle();
    expect(find.text('Your notes'), findsOneWidget);
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });
}
