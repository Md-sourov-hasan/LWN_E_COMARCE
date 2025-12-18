import 'package:ecomarce1/services/auth_services.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
class AuthController extends GetxController {
AuthServices authServices=AuthServices();
signUpUser(String username, String email, String password)async{
  try{
    http.Response response= await authServices.signUpUser(username, email, password);
    if(response.statusCode==200 || response.statusCode==201){
      print("sign up successful");
    }
    else{
      print("sign up failed ${response.statusCode}");
    }
  }catch(e){
    print("sign up error $e");
  }
}
}