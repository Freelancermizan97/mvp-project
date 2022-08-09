import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvp_project/profile_page.dart';

void main()
{
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Color(0xffA1A0F2),)
  );
  runApp(MyApp());
}





class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {

    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
          theme: ThemeData(
              //backgroundColor: Color(0xffA1A0F2),
              fontFamily: 'Nuni'
          ),
          debugShowCheckedModeBanner: false,
          home: ProfilePage()
      ),
      designSize: const Size(414, 896),
    );
  }
}


