class ApiEndpoint {
  static const String baseUrl = "http://10.10.7.85:9005/api";


  static const String signup = "/authentication/register/";
  static const String signin = "/authentication/login/";
  static const String forgetPass = "/authentication/password/reset/";
  static const String resetPass = "/authentication/password/reset/confirm/";
  static const String userName = "/authentication/onboarding/steps/username/";
  static const String dateOfBirth = "/authentication/onboarding/steps/dob/";
  static const String gender = "/authentication/onboarding/steps/gender/";
  static const String getQuestions = "/authentication/onboarding/questions/";
  static const String submitAnswer = "/authentication/onboarding/steps/question-answer/";
  static const String getAvatar = "/authentication/onboarding/avatars-list/";
  static const String submitAvatar = "/authentication/onboarding/steps/avatar/";
}