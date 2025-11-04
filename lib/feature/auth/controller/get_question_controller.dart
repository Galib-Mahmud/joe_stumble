// import 'package:get/get.dart';
// import '../../../core/endpoint/api_client.dart';
// import '../../../core/endpoint/api_endpoint.dart';
// import '../../../core/local_storage/user_info.dart';
// import '../../../route/route_name.dart';
//
// class GetQuestionController extends GetxController {
//   final isLoading = false.obs;
//   final questions = [].obs;
//   final currentQuestionIndex = 0.obs;
//
//   final ApiClient _apiClient = ApiClient(baseUrl: ApiEndpoint.baseUrl);
//
//   Future<void> getQuestion() async {
//     final token = (await UserInfo.getAccessToken())?.trim();
//     if (token == null || token.isEmpty) {
//       Get.snackbar("Error", "Access token is missing. Please login again.");
//       return;
//     }
//
//     isLoading.value = true;
//     try {
//       final response = await _apiClient.get(
//         headers: {
//           "Content-Type": "application/json",
//           "Authorization": "Bearer $token",
//         },
//         ApiEndpoint.getQuestions,
//       );
//
//       if (response != null && response['success'] == true) {
//         questions.value = response['data']['questions'];
//
//         // 🧩 initialize selectedOption for each question
//         for (var q in questions) {
//           q['selectedOption'] = q['is_multi_select'] == true ? <int>[] : null;
//         }
//       } else {
//         Get.snackbar("Error", response?['message'] ?? "Something went wrong");
//       }
//     } catch (e) {
//       Get.snackbar("Error", "Request failed: ${e.toString()}");
//     } finally {
//       isLoading.value = false;
//     }
//   }
//
//   /// 🟠 Submit current question answer
//   Future<void> submitAnswer(int questionId, dynamic optionId) async {
//     final token = (await UserInfo.getAccessToken())?.trim();
//     if (token == null || token.isEmpty) {
//       Get.snackbar("Error", "Access token missing. Please login again.");
//       return;
//     }
//
//     try {
//       final body = {
//         "question_id": questionId,
//         "option_id": optionId, // can be a list or single value
//       };
//
//       final response = await _apiClient.post(
//         ApiEndpoint.submitAnswer,
//         headers: {
//           "Content-Type": "application/json",
//           "Authorization": "Bearer $token",
//         },
//         body: body,
//       );
//
//       if (response != null && response['success'] == true) {
//         print("✅ Answer submitted successfully: $body");
//       } else {
//         print("🚫 [POST] Request Failed");
//         Get.snackbar("Error", response?['message'] ?? "Failed to submit answer");
//       }
//     } catch (e) {
//       Get.snackbar("Error", "Submit failed: ${e.toString()}");
//     }
//   }
//
//   /// 🟢 Next button logic
//   Future<void> nextQuestion() async {
//     final currentQ = questions[currentQuestionIndex.value];
//     final selected = currentQ['selectedOption'];
//     final questionId = currentQ['question_id'];
//     final isMulti = currentQ['is_multi_select'] == true;
//
//     // 🧩 validation
//     if (isMulti) {
//       if (selected == null || (selected as List).isEmpty) {
//         Get.snackbar("Warning", "Please select at least one option.");
//         return;
//       }
//
//       // 🔸 Special case: question_id = 4 must have at least 2 selections
//       if (questionId == 4 && selected.length < 2) {
//         Get.snackbar("Warning", "Please select at least two options for this question.");
//         return;
//       }
//     } else {
//       if (selected == null) {
//         Get.snackbar("Warning", "Please select one answer before proceeding.");
//         return;
//       }
//     }
//
//     // ✅ Format properly for backend
//     final formattedOptionId = isMulti ? selected : [selected];
//
//     // Submit answer
//     await submitAnswer(questionId, formattedOptionId);
//
//     // Next question
//     if (currentQuestionIndex.value < questions.length - 1) {
//       currentQuestionIndex.value++;
//     } else {
//
//       Get.toNamed(RouteName.selectAvatar);
//       Get.snackbar("Completed", "All questions answered!");
//       // navigate to summary or result page
//     }
//   }
// }
