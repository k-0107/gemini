import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

void main() async {
  final model = GenerativeModel(
    model: 'gemini-pro',
    apiKey: apiKey,
  );
  const prompt = '子犬の名前を5匹分考えてください';
  final content = [
    Content.text(prompt),
  ];

  final response = await model.generateContent(content);

  debugPrint(response.text);
}
