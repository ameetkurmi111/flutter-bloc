 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBar(){
  return  AppBar(
              bottom: PreferredSize(
             
                preferredSize:const Size.fromHeight(1.0),
                 child: Container(
                  color: Colors.grey.withOpacity(0.5),
                  height: 1.0,
                 ), 
                ),
              centerTitle: true,
              title: Text("Log In",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.normal
              ),
              ),
              );
 }
 //
  Widget buildThirdPartyLogin (BuildContext context){
  return Center(
    child: Container(
      margin: EdgeInsets.only(top: 40.h,
      bottom: 20.h
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _reusableIcons("google"),
          _reusableIcons("apple"),
          _reusableIcons("facebook"),
        ],
      ),
    ),
  );
  }

  Widget _reusableIcons(String iconName){
  return    GestureDetector(
          onTap: () {},
          child: SizedBox(
            width: 40.w,
            height: 40.w,
            child: Image.asset("assets/icons/$iconName.png"),
          ),
        );
  }

  Widget resuableText(String text){
    return Container(
      margin: EdgeInsets.only(top: 5.h),
      child: Text(text,
      style: TextStyle(
        color: Colors.grey.withOpacity(0.6),
        fontWeight: FontWeight.normal,
        fontSize: 14.sp,
      ),
      ),
    );
  }


  Widget buildTextFeild(String text,String texttype){
    return Container(
      width: 325.w,
      height: 50.h,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(Radius.circular(15.w),),
        border: Border.all(color: Colors.black)
      ),
      child: Row(
        children: [
          Container(
            width: 16.w,
            height: 16.w,
            margin: EdgeInsets.only(left: 17.w),
            child: Image.asset("assets/icons/user.png"),
          ),
        ],
      ),
    );

  }