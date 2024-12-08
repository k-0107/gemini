import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gemini/view_model/judge_x_view_model.dart';

class JudgeXPage extends HookWidget {
  const JudgeXPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              const SizedBox(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 30,
                        height: 30,
                        child: FlutterLogo(),
                      ),
                      Text('文章から人物像を判定します')
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 400,
                child: PostInputField(controller: controller),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  height: 30,
                  child: JudgeButton(
                    controller: controller,
                  ),
                ),
              ),
              SizedBox(
                child: Expanded(
                  child: Container(
                    color: Colors.lightBlue[50],
                    alignment: Alignment.center,
                    child: const PersonChar(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
