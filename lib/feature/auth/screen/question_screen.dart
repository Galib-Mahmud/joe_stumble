import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widget/splash/custom_appbar.dart';
import '../../widget/splash/custom_button.dart';
import '../controller/get_question_controller.dart';

class QuestionScreen extends StatelessWidget {
  final GetQuestionController controller = Get.put(GetQuestionController());

  @override
  Widget build(BuildContext context) {
    controller.getQuestion();

    return Scaffold(
      appBar: CustomAppBar(),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (controller.questions.isEmpty) {
          return const Center(child: Text("No questions available"));
        }

        // Current question
        final question = controller.questions[controller.currentQuestionIndex.value];
        final options = question['options'] as List;
        final isMulti = question['is_multi_select'] ?? false;

        return Padding(
          padding: EdgeInsets.all(16.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Progress bar
              LinearProgressIndicator(
                minHeight: 7.h,
                value: (controller.currentQuestionIndex.value + 1) / controller.questions.length,
                backgroundColor: Colors.grey[200],
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.orange),
              ),
              SizedBox(height: 20.h),

              // Question number
              Text(
                "Question ${controller.currentQuestionIndex.value + 1}/${controller.questions.length}",
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.h),

              // Question text
              Text(
                question['question_text'] ?? '',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.h),

              // Options
              Expanded(
                child: ListView(
                  children: options.map<Widget>((opt) {
                    if (isMulti) {
                      // Multi-select → Checkbox
                      final selectedOptions = question['selectedOption'] as List<int>;
                      return CheckboxListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(opt['option_text']),
                        value: selectedOptions.contains(opt['id']),
                        onChanged: (bool? checked) {
                          if (checked == true) {
                            selectedOptions.add(opt['id']);
                          } else {
                            selectedOptions.remove(opt['id']);
                          }
                          controller.questions.refresh();
                        },
                        activeColor: Colors.orange,
                      );
                    } else {
                      // Single-select → Radio
                      final selectedOption = question['selectedOption'] as int?;
                      return RadioListTile<int>(
                        contentPadding: EdgeInsets.zero,
                        title: Text(opt['option_text']),
                        value: opt['id'],
                        groupValue: selectedOption,
                        onChanged: (val) {
                          question['selectedOption'] = val;
                          controller.questions.refresh();
                        },
                        activeColor: Colors.orange,
                      );
                    }
                  }).toList(),
                ),
              ),

              SizedBox(height: 20.h),

              // Next / Finish button
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: CustomButton(
                  text: controller.currentQuestionIndex.value == controller.questions.length - 1
                      ? 'Finish'
                      : 'Next',
                  onPressed: controller.nextQuestion,
                  isFinishButton: true,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
