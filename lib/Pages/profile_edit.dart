import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvp_project/Pages/area_edit.dart';
import 'package:mvp_project/Pages/email_edit.dart';
import 'package:mvp_project/Pages/job_title_edit.dart';

class ProfileEdit extends StatefulWidget
{
  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}



class _ProfileEditState extends State<ProfileEdit>
{

  showDialougeBox()
  {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.r)
    ),
        backgroundColor: Colors.transparent,
        context: (context),
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(left: 10.r, right: 10.r),
            height: 280.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
                color: Colors.transparent
            ),
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      
                      height: 60.h,

                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.r), topRight: Radius.circular(15.r))
                      ),
                      child: Center(
                        child: Text('Take a photo', style: TextStyle(color: Color(0xff555555), fontSize: 18.sp),),
                      ),
                    ),
                    Divider(
                      height: 2.h,
                      color: Color(0xffD9D9D9),
                      thickness: 2.sp,
                    ),
                    Container(
                      height: 60.h,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          // /borderRadius: BorderRadius.only(topLeft: Radius.circular(10.r), topRight: Radius.circular(10.r))
                      ),
                      child: Center(
                        child: Text('Choose from library', style: TextStyle(color: Color(0xff555555), fontSize: 18.sp),),
                      ),
                    ),
                    Divider(
                      height: 2.h,
                      color: Color(0xffD9D9D9),
                      thickness: 2.sp,
                    ),
                    Container(
                      height: 60.h,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15.r), bottomRight: Radius.circular(15.r))
                      ),
                      child: Center(
                        child: Text('Remove Current photo', style: TextStyle(color: Color(0xff555555), fontSize: 18.sp),),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h,),
                InkWell(
                  onTap: ()
                  {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 60.h,

                    decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Center(
                      child: Text('Cancel', style: TextStyle(color: Color(0xff555555), fontSize: 18.sp),),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Color(0xffA1A0F2),
      appBar: AppBar(
        title: Text('Profile', style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w900),),
        centerTitle: true,
        elevation: 0,
        backgroundColor:Color(0xffA1A0F2),
        leading: IconButton(
          onPressed: ()
          {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size: 20.r,)),

        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.r),
            child: IconButton(
                onPressed: ()
                {

                },
                icon: Icon(Icons.edit_outlined, size: 25.r,)),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            top: 140.h,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(25.r)),
                  color: Color(0xffFFFFFF)
              ),

            ),
          ),


          // Profile Info
          Positioned(
              top: 55.r,
              child: Container(
                width:  MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //Profile Image
                    InkWell(
                      onTap: ()
                      {
                        showDialougeBox();
                      },
                      child: CircleAvatar(

                        radius: 80.r,
                        child: Image.asset('images/profile_img.png'),
                      ),
                    ),
                    SizedBox(height: 10.h,),

                    //Name
                    Text('Simon Max', style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),),
                    SizedBox(height: 5.h,),


                    //Biography
                    Padding(
                      padding: EdgeInsets.all(20.r),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Bio
                          Text('Biography', style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w800),),
                          SizedBox(height: 15.h,),
                          //Area
                          Row(
                            children: [
                              Image.asset('icon/calendar.png', height: 18.h, color:Color(0xff3D3F3E) ,),
                              SizedBox(width: 12.w,),
                              InkWell(
                                onTap: ()
                                {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> AreaEdit()));
                                },
                                  child: Text('Area : Bandhagen', style: TextStyle(color: Color(0xff3D3F3E),fontSize: 15.sp ),)),
                            ],
                          ),
                          SizedBox(height: 10.h,),

                          //Job
                          Row(
                            children: [
                              Image.asset('icon/world.png', height: 18.h,color:Color(0xff3D3F3E)),
                              SizedBox(width: 12.w,),
                              InkWell(
                                onTap: ()
                                {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> JobTitleEdit()));
                                },
                                  child: Text('Job: Graphic Designer', style: TextStyle(color: Color(0xff3D3F3E),fontSize: 15.sp ),)),
                            ],
                          ),
                          SizedBox(height: 10.h,),

                          //Email
                          Row(
                            children: [
                              Image.asset('icon/portfolio.png', height: 18.h,color:Color(0xff3D3F3E)),
                              SizedBox(width: 12.w,),
                              InkWell(
                                onTap: ()
                                {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EmailEdit()));
                                },
                                  child: Text('Email : simontest@gmail.com ', style: TextStyle(color: Color(0xff3D3F3E),fontSize: 15.sp ),)),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}
