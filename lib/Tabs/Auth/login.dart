import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_portfolio/Tabs/Auth/registeration.dart';
import 'package:web_portfolio/utils/constants.dart';

import '../../Widgets/myCustomButton.dart';
import '../../Widgets/myTextField.dart';
import 'forgotPassword.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: size.width <= 650
            ? SingleChildScrollView(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: SafeArea(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/logo.png',
                            // height: 100,
                            // width: 100,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RaisedButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  color: blueCustom,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                RegistrationScreen()));
                                  },
                                  child: Text('Login'),
                                ),
                                SizedBox(width: 10),
                                RaisedButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                RegistrationScreen()));
                                  },
                                  child: Text('Register'),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Login",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Text("Email"),
                    MyTextFormField(
                        hint: "Email",
                        controller: emailController,
                        kry: TextInputType.emailAddress,
                        width: 300.w),
                    Text("Password"),
                    MyTextFormField(
                        hint: "Password",
                        controller: passwordController,
                        kry: TextInputType.visiblePassword,
                        width: 300.w),
                    SizedBox(height: 10),
                    MyCustomButton(
                      text: "Login",
                    ),
                    SizedBox(height: 20),
                    Text("Register as a new user"),
                    SizedBox(height: 13),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ForgotPasswordScreen()));
                        },
                        child: Text("Forgot your password?")),
                  ],
                )),
              )
            : SingleChildScrollView(
                padding: EdgeInsets.only(left: 150, top: 20, right: 150),
                child: SafeArea(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/logo.png',
                          // height: 100,
                          // width: 100,
                        ),
                        Row(
                          children: [
                            MyCustomButton(
                              text: "Login",
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                              },
                            ),
                            SizedBox(width: 10),
                            MyCustomButton(
                              text: "Register",
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            RegistrationScreen()));
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Login",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Text("Email"),
                    MyTextFormField(
                        hint: "Email",
                        controller: emailController,
                        kry: TextInputType.emailAddress,
                        width: 400),
                    Text("Password"),
                    MyTextFormField(
                        hint: "Password",
                        controller: passwordController,
                        kry: TextInputType.visiblePassword,
                        width: 400),
                    SizedBox(height: 10),
                    MyCustomButton(
                      text: "Login",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegistrationScreen()));
                      },
                    ),
                    const SizedBox(height: 30),
                    SizedBox(height: 20),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegistrationScreen()));
                        },
                        child: Text("Register as a new user")),
                    SizedBox(height: 13),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ForgotPasswordScreen()));
                        },
                        child: Text("Forgot your password?")),
                  ],
                )),
              ));
  }
}
