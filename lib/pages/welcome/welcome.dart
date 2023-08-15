
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_bloc/pages/welcome/bloc/welcome_bloc.dart';
import 'package:flutter_application_bloc/pages/welcome/bloc/welcome_event.dart';
import 'package:flutter_application_bloc/pages/welcome/bloc/welcome_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
 PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return  Container(
      color:Colors.white ,
      child: Scaffold(
        body:BlocBuilder<WelcomeBloc,WelcomeState>(builder: (context, state) {
          return Container(
            color: Colors.white,
            child: Scaffold(
              body: Container(
                margin: EdgeInsets.only(top: 34.h),
                width: 375.w,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    PageView(
                      controller: pageController,
                      onPageChanged: (index){
                        state.page = index;
                        BlocProvider.of<WelcomeBloc>(context).add(WelcomeEvent());
                 
                      },
                      children: [
                        _page(
                            1,
                            context,
                            "next",
                            "First see learning",
                            "Forget about a for a paper all knowledge in one learning",
                            "assets/images/reading.png"),
                        _page(
                            2,
                            context,
                            "next",
                            "Connect with everyone",
                            "Always keep in touch with tutor and friend.Let's get connected",
                            "assets/images/boy.png"),
                        _page(
                            3,
                            context,
                            "get started",
                            "Always Fascinated learning",
                            "Any time, anywhere.The time is at our discrtion so study whenever you want ",
                            "assets/images/man.png"),
                      ],
                    ),
                    Positioned(
                      bottom: 55.h,
                      child: DotsIndicator(
                        position: state.page.toInt(),
                        dotsCount: 3,
                        mainAxisAlignment: MainAxisAlignment.center,
                        decorator: DotsDecorator(
                            color: Colors.grey,
                            size: const Size.square(8.0),
                            activeSize: const Size(18, 8.0),
                            activeShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            activeColor: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },)
         ),
    );
  }
}

Widget _page(int index,BuildContext context,String buttonName,String title,String subtitle,String imagepath ){
  return  Column(
                    children: [
                      SizedBox(width: 345.w,
                      height: 345.w,
                      child: Image.asset(imagepath,
                      fit: BoxFit.cover,
                      ),
                      ),
                      Container(
                        child: Padding(
                          padding:EdgeInsets.only(left:30.w,right: 30.w),
                          child: Text(title,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.normal
                          ),
                          ),
                        ),
                      ),

                      Container(
                        width: 375.w,
                        child: Text(subtitle,
                        style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          // with 0-2
                          if(index<3){
                          // animation
                          PageController().animateToPage(index, duration: const Duration(milliseconds: 1000), curve: Curves.easeIn);
                          }else{
                          // jump to new page
                          Navigator.of(context).pushNamedAndRemoveUntil("signIn",(route)=> false);

                          }
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 50.w,left: 25.w,right: 25.w),
                          height: 50.h,
                          width: 325.h,
                                 
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(Radius.circular(15.w),),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset: const Offset(0, 1)
                              ),
                            ]
                          ),
                          child: Center(
                            child: Text(buttonName,
                            style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.normal),
                            ),
                            
                          ),
                        ),
                      ),
                    ],
                  );
}