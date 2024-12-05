import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gemini/judge_x_page.dart';

void main() {
  const app = ProviderScope(
    child: MaterialApp(
      home: JudgeXPage(),
    ),
  );

  runApp(app);
}
