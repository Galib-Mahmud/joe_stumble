// import 'package:get/get.dart';
// import '../../../core/endpoint/api_client.dart';
// import '../../../core/endpoint/api_endpoint.dart';
// import '../../../core/local_storage/user_info.dart';
// import '../../../route/route_name.dart';
//
// class AvatarController extends GetxController {
//   /// List of avatars
//   /// Each item can be:
//   /// - Map with 'id' & 'image' (from API)
//   /// - String (local asset path)
//   var avatars = <dynamic>[].obs;
//
//   /// Selected index
//   var selectedAvatarIndex = (-1).obs;
//
//   /// Loading state for submit button
//   final isLoading = false.obs;
//
//   /// API Client
//   final ApiClient _apiClient = ApiClient(baseUrl: ApiEndpoint.baseUrl);
//
//   @override
//   void onInit() {
//     super.onInit();
//
//     // Receive avatar list from previous screen (optional)
//     if (Get.arguments != null && Get.arguments is List) {
//       avatars.assignAll(Get.arguments);
//     }
//   }
//
//   /// Select avatar by index
//   void selectAvatar(int index) {
//     if (index < 0 || index >= avatars.length) return;
//     selectedAvatarIndex.value = index;
//   }
//
//   /// Get selected avatar id (only for API avatars)
//   int? get selectedAvatarId {
//     if (selectedAvatarIndex.value == -1) return null;
//
//     final selected = avatars[selectedAvatarIndex.value];
//
//     // Only maps with 'id' are valid for backend submission
//     if (selected is Map<String, dynamic> && selected.containsKey('id')) {
//       return selected['id'];
//     }
//     return null;
//   }
//
//   /// Submit selected avatar to backend
//   Future<void> submitAvatar() async {
//     final avatarId = selectedAvatarId;
//
//     if (avatarId == null) {
//       Get.snackbar("Error", "Please select a valid avatar");
//       return;
//     }
//
//     isLoading.value = true;
//
//     try {
//       final token = (await UserInfo.getAccessToken())?.trim();
//       if (token == null || token.isEmpty) {
//         Get.snackbar("Error", "Access token missing. Please login again.");
//         return;
//       }
//
//       final response = await _apiClient.post(
//         ApiEndpoint.submitAvatar,
//         headers: {
//           "Content-Type": "application/json",
//           "Authorization": "Bearer $token",
//         },
//         body: {
//           "profile_picture": avatarId,
//         },
//       );
//
//       if (response != null && response['success'] == true) {
//         Get.toNamed(RouteName.gender); // navigate next
//       } else {
//         Get.snackbar("Error", response?['message'] ?? "Something went wrong");
//       }
//     } catch (e) {
//       Get.snackbar("Error", e.toString());
//     } finally {
//       isLoading.value = false;
//     }
//   }
// }
