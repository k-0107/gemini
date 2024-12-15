import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gemini/view_model/riverpod/judge_x_state.dart';
import 'package:google_fonts/google_fonts.dart';

class PostInputField extends StatelessWidget {
  const PostInputField({
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
        labelText: '分からないことを聞いてください',
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

class JudgeButton extends ConsumerWidget {
  const JudgeButton({
    required this.controller,
  });

  final TextEditingController controller;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () async {
        final notifire = ref.read(personCharNotifierProvider.notifier);
        await notifire.judge(controller.text);
      },
      child: Text(
        '送信',
        style: GoogleFonts.kaiseiDecol(
            fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}

class PersonChar extends ConsumerWidget {
  const PersonChar();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final personChar = ref.watch(personCharNotifierProvider);
    if (personChar.value == null) {
      return const Icon(
        Icons.person,
        color: Colors.grey,
        size: 50,
      );
    } else {
      return Text(personChar.value ?? '');
    }
  }
}
