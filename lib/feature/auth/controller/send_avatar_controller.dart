// import 'package:get/get.dart';
// import '../../../core/endpoint/api_client.dart';
// import '../../../core/endpoint/api_endpoint.dart';
// import '../../../core/local_storage/user_info.dart';
// import '../../../route/route_name.dart';
//
// class AvatarController extends GetxController {
//   final isLoading = false.obs;
//   final selectedAvatarIndex = (-1).obs; // -1 = none selected
//   final avatars = <Map<String, dynamic>>[].obs; // fetched avatars list
//
//   final ApiClient _apiClient = ApiClient(baseUrl: ApiEndpoint.baseUrl);
//
//   @override
//   void onInit() {
//     super.onInit();
//     fetchAvatars();
//   }
//
//   // Fetch avatars from API
//   Future<void> fetchAvatars() async {
//     final token = (await UserInfo.getAccessToken())?.trim();
//     if (token == null || token.isEmpty) {
//       Get.snackbar("Error", "Access token missing. Please login again.");
//       return;
//     }
//
//     isLoading.value = true;
//     try {
//       final response = await _apiClient.get(
//         ApiEndpoint.getAvatar, // your GET avatar endpoint
//         headers: {
//           "Content-Type": "application/json",
//           "Authorization": "Bearer $token",
//         },
//       );
//
//       if (response != null && response['success'] == true) {
//         // assuming API returns a list of avatars: [{id: 1, url: "..."}]
//         avatars.value = List<Map<String, dynamic>>.from(response['data']['avatars']);
//       } else {
//         Get.snackbar("Error", response?['message'] ?? "Failed to fetch avatars");
//       }
//     } catch (e) {
//       Get.snackbar("Error", "Request failed: ${e.toString()}");
//     } finally {
//       isLoading.value = false;
//     }
//   }
//
//   // Select avatar
//   void selectAvatar(int index) {
//     selectedAvatarIndex.value = index;
//   }
//
//   // Submit selected avatar
//   Future<void> submitAvatar() async {
//     if (selectedAvatarIndex.value == -1) {
//       Get.snackbar("Error", "Please select an avatar");
//       return;
//     }
//
//     final token = (await UserInfo.getAccessToken())?.trim();
//     if (token == null || token.isEmpty) {
//       Get.snackbar("Error", "Access token missing. Please login again.");
//       return;
//     }
//
//     isLoading.value = true;
//
//     try {
//       final selectedAvatar = avatars[selectedAvatarIndex.value];
//       final response = await _apiClient.post(
//         ApiEndpoint.submitAvatar, // your POST endpoint
//         headers: {
//           "Content-Type": "application/json",
//           "Authorization": "Bearer $token",
//         },
//         body: {
//           "avatar_id": selectedAvatar['id'], // or 'url', depending on backend
//         },
//       );
//
//       if (response != null && response['success'] == true) {
//         Get.toNamed(RouteName.introduceYourself);
//       } else {
//         Get.snackbar("Error", response?['message'] ?? "Failed to submit avatar");
//       }
//     } catch (e) {
//       Get.snackbar("Error", "Request failed: ${e.toString()}");
//     } finally {
//       isLoading.value = false;
//     }
//   }
// }
