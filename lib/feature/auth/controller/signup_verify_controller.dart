import 'package:get/get.dart';
import 'package:joe_stumble/core/endpoint/api_endpoint.dart';

class SignupVerifyController extends GetxController {
  final isLoading = false.obs;
  final email=''.obs;
  late Uri url;

  @override
  void onInit() {
    super.onInit();
    url = Uri.parse(ApiEndpoint.signupVerify);
  }
  void setEmail(String value){
    email.value=value;
  }
  Future<void>registerOtp(String otp)async{
    if(otp.length!=6){

    }
  }

}
