import 'package:ecomarce1/const/all_colors.dart';
import 'package:ecomarce1/const/all_styles.dart';
import 'package:ecomarce1/controller/auth_controller.dart';
import 'package:ecomarce1/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignupScreens extends StatelessWidget {
  SignupScreens({super.key});
  AuthController authController=Get.put(AuthController());
TextEditingController userNameController=TextEditingController();
TextEditingController emailController=TextEditingController();
TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(15),
            width: Get.width,
            height: Get.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: AllColors.primaryColor,
                      radius: 50,
                      child: Icon(Icons.person, size: 60,
                      color: AllColors.whiteColor,
                      ),
                    ),
                    SizedBox(height: 60,),
                    Container(
                      height: 300,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color:  AllColors.primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 60,
                            width: 300,
                            decoration: BoxDecoration(
                              color: AllColors.whiteColor,
                              borderRadius: BorderRadius.circular(500),
                            ),
                            child: TextField(
                              controller: userNameController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(left: 15, top: 20,),
                                hintText: "Username",
                                hintStyle:AllStyles.titleStyle,
                                prefixIcon: Icon(Icons.person, color: AllColors.primaryColor, size: 30,),
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            height: 60,
                            width: 300,
                            decoration: BoxDecoration(
                              color: AllColors.whiteColor,
                              borderRadius: BorderRadius.circular(500),
                            ),
                            child: TextField(
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(left: 15, top: 20,),
                                hintText: "Email",
                                hintStyle:AllStyles.titleStyle,
                                prefixIcon: Icon(Icons.email, color: AllColors.primaryColor, size: 30,),
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            height: 60,
                            width: 300,
                            decoration: BoxDecoration(
                              color: AllColors.whiteColor,
                              borderRadius: BorderRadius.circular(500),
                            ),
                            child: TextField(
                              controller: passwordController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(left: 15, top: 20,),
                                hintText: "Password",
                                hintStyle:AllStyles.titleStyle,
                                prefixIcon: Icon(Icons.lock, color: AllColors.primaryColor, size: 30,),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    CustomButton(
                      
                      height:60,
                       width: Get.width,
                        label: "Sign Up",
                         color: AllColors.primaryColor,
                         labelColor: AllColors.whiteColor,
                          onTap: (){
                            if(userNameController.text.isEmpty &&
                            emailController.text.isNotEmpty&&
                             passwordController.text.isNotEmpty){
                              Get.snackbar("Error", "Please enter username");
                              return;
                             }
                            authController.signUpUser(
                              userNameController.text,
                              emailController.text,
                              passwordController.text,
                            );
                          },
                          ),
                  ],
              ),
          ),
        ),
    );
  }
}