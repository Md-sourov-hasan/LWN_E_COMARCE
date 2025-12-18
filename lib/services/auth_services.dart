import 'dart:convert';

import 'package:ecomarce1/const/base_url.dart';
import 'package:http/http.dart' as http;

class AuthServices {

 Future <http.Response> signUpUser(
    String username,
    String email,
    String password,
  )async{
     String urle="${BaseUrl.baseUrl}users";
     Map body={
      'username':username,
      'email':email,
      'password':password,
     };
  http.Response response= await http.post(
    Uri.parse(urle),
    body: json.encode(body),
  );
  return response;
}
}