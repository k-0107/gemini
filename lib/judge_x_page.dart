import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gemini/gemini.dart';

class JudgeXPage extends HookWidget {
  const JudgeXPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('文章から人物像を判定します'),
            SizedBox(
              width: 400,
              child: _PostInputField(controller: controller),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('判定する'),
            ),
          ],
        ),
      ),
    );
  }
}

class _PostInputField extends StatelessWidget {
  const _PostInputField({
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.multiline,
      maxLines: 4,
      decoration: const InputDecoration(
        hintText: 'ここにXの投稿を入力',
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.blue),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.black),
        ),
      ),
    );
  }
}
