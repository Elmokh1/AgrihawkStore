import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/ui/home_screen/employee/employee.dart';

import '../../dialog_utils.dart';
import '../componant/custom_text_field.dart';
import '../home_screen/admin/admin_screen.dart';



class Login extends StatefulWidget {

  static const String routeName = "login";

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController(text: "ahmedMokhtar");
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordConfirmationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFDFECDB),
        image: DecorationImage(
            image: AssetImage('assets/images/auth_pattern.png'),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
          body: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text(
                      "Welcome back!",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  CustomTextFormField(
                    controller: emailController,
                    Label: "E mail",
                    // controller: nameController,
                    validator: (text) {
                      if (text == null || text.trim().isEmpty) {
                        return 'Please Enter Email ';
                      }
                    },
                  ),
                  CustomTextFormField(
                    isPassword: true,
                    controller: passwordController,
                    Label: "Password",
                    // controller: nameController,
                    validator: (text) {
                      if (text == null || text.trim().isEmpty) {
                        return 'Please Enter The Password ';
                      }
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 12),
                      ),
                      onPressed: () {
                        LoginTap();
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text('Login'),
          )),
    );
  }
  void LoginTap() async {
    // async - await
    if (formKey.currentState?.validate() == false) {
      return;
    }
    if(emailController.text == "anter" && passwordController.text == "610019"){
      DialogUtils.showMessage(
        context,
        "User Logged in  Successfully",
        posActionName: "ok",
        posAction: () {
          Navigator.pushReplacementNamed(context, AdminScreen.routeName);
        },
        dismissible: false,
      );
    }
    if(emailController.text == "sapry" && passwordController.text == "000000"){
      DialogUtils.showMessage(
        context,
        "User Logged in  Successfully",
        posActionName: "ok",
        posAction: () {
          Navigator.pushReplacementNamed(context, Employee.routeName);
        },
        dismissible: false,
      );
    }

  }
}
