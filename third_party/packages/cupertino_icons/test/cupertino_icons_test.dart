// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'Cupertino Icon Test',
    (WidgetTester tester) async {
      // #docregion CupertinoIcon
      const Icon icon = Icon(
        CupertinoIcons.heart_fill,
        color: Colors.pink,
        size: 24.0,
        semanticLabel: 'Text to announce in accessibility modes',
      );
      // #enddocregion CupertinoIcon

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: icon,
          ),
        ),
      );

      expect(find.byType(Icon), findsOne);
    },
  );
}
