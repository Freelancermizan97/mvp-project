import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailEdit extends StatefulWidget
{
  @override
  State<EmailEdit> createState() => _EmailEditState();
}



class _EmailEditState extends State<EmailEdit>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        elevation: 1,
        centerTitle: true,
        leading:IconButton(
          onPressed: ()
          {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 20.sp,),
        ),

        title:  Text('Email', style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w900, color: Colors.black),),

        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.r),
            child: Center(child: Text('Save', style: TextStyle(color: Colors.black, fontSize: 16.sp, fontWeight: FontWeight.w700),)),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20.r),
        child: Container(
          color: Color(0xffE8E8FF),
          padding: EdgeInsets.only(left: 10.r,),
          height: 55.h,
          child: Center(
            child: TextFormField(
              enabled: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Email :",
                hintStyle: TextStyle(color: Color(0xff555555)),
                prefixIcon: Icon(Icons.email_outlined, color: Color(0xff3D3F3E),),
                suffixIcon: Icon(Icons.highlight_remove, color: Color(0xff3D3F3E),)

              ),
            ),
          ),
        ),
      ),
    );
  }
}
