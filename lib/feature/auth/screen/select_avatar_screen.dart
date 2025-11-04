import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:joe_stumble/feature/widget/splash/custom_appbar.dart';
import 'package:joe_stumble/feature/widget/splash/custom_button.dart';
import '../controller/get_avatar_controller.dart';

class SelectAvatar extends StatelessWidget {
  SelectAvatar({super.key});
  final AvatarController controller = Get.put(AvatarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.white,
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        // Debug print to check API response
        print("Avatars loaded: ${controller.avatars}");

        if (controller.avatars.isEmpty) {
          return const Center(child: Text("No avatars available"));
        }

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              SizedBox(height: 70.h),
              Text(
                "Select an avatar",
                style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30.h),

              // GridView wrapped in Expanded
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: controller.avatars.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                  ),
                  itemBuilder: (context, index) {
                    final isSelected = controller.selectedAvatarIndex.value == index;
                    final avatarUrl = controller.avatars[index]['url'];
                    return GestureDetector(
                      onTap: () => controller.selectAvatar(index),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: isSelected ? Colors.orange : Colors.transparent,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.r),
                          child: avatarUrl != null && avatarUrl.isNotEmpty
                              ? Image.network(
                            avatarUrl,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.person),
                          )
                              : const Icon(Icons.person),
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 20),
              Text(
                "This helps you stay anonymous",
                style: TextStyle(fontSize: 13.sp),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30.h),

              // Next Button
              CustomButton(
                text: "Next",
                onPressed: controller.submitAvatar, // only onPressed
              ),
              SizedBox(height: 20.h),
            ],
          ),
        );
      }),
    );
  }
}
