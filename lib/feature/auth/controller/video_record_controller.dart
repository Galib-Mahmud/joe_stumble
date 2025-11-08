import 'dart:io';
import 'package:camera/camera.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';
import '../../../core/local_storage/user_info.dart';
import '../../../core/endpoint/api_endpoint.dart';

class VideoRecordController extends GetxController {
  late CameraController cameraController;
  RxBool isRecording = false.obs;
  RxBool isUploading = false.obs;

  @override
  void onInit() {
    initCamera();
    super.onInit();
  }

  Future<void> initCamera() async {
    final cameras = await availableCameras();
    cameraController = CameraController(
      cameras.first,
      ResolutionPreset.medium,
      enableAudio: true,
    );
    await cameraController.initialize();
    update();
  }

  Future<void> startRecording() async {
    if (!cameraController.value.isInitialized) return;
    isRecording.value = true;
    await cameraController.startVideoRecording();
  }

  Future<void> stopRecordingAndUpload() async {
    if (!cameraController.value.isRecordingVideo) return;

    isRecording.value = false;
    XFile recordedFile = await cameraController.stopVideoRecording();
    uploadVideo(File(recordedFile.path));
  }

  Future<void> uploadVideo(File file) async {
    final token = await UserInfo.getAccessToken();
    if (token == null || token.isEmpty) {
      Get.snackbar("Error", "Please login again.");
      return;
    }

    try {
      isUploading.value = true;

      final uri = Uri.parse("${ApiEndpoint.baseUrl}${ApiEndpoint.videoUpload}");
      final request = http.MultipartRequest("POST", uri);

      request.headers["Authorization"] = "Bearer $token";
      request.files.add(await http.MultipartFile.fromPath(
        "video_file",
        file.path,
        filename: basename(file.path),
      ));

      final response = await request.send();
      final responseBody = await http.Response.fromStream(response);

      if (response.statusCode == 200) {
        Get.snackbar("Success", "Video uploaded ✅");
      } else {
        Get.snackbar("Failed", responseBody.body);
      }
    } catch (e) {
      Get.snackbar("Upload Error", e.toString());
    } finally {
      isUploading.value = false;
    }
  }
}
