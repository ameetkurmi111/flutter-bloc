import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/sign_in_widget.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      child:  SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
             appBar: buildAppBar(),
             body: SingleChildScrollView(
              child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,   
                children: [
                  buildThirdPartyLogin(context),
                  Center(child: resuableText("Or use your email login", )),
                  Container(
                    margin: EdgeInsets.only(top: 66.h),
                    padding: EdgeInsets.only(left: 25.w,right: 25.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                           resuableText("Email"),
                           buildTextFeild("Email", "email")
                      ],
                    ),
                  ),
                ],
              ),
             ),
             ),
      ),
      );
    
  }
}