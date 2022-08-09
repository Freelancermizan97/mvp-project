import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvp_project/Pages/profile_edit.dart';

class ProfilePage extends StatefulWidget
{
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}



class _ProfilePageState extends State<ProfilePage>
{
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
        leading: Icon(Icons.arrow_back_ios, size: 20.r,),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20      .r),
            child: IconButton(
                onPressed: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileEdit()));
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
                  borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                  color: Color(0xffFFFFFF)
              ),

            ),
          ),





          Positioned(
              top: 55.r,
              child: Container(
                width:  MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Image
                    CircleAvatar(
                      radius: 80.r,
                      child: Image.asset('images/profile_img.png'),
                    ),
                    SizedBox(height: 10.h,),

                    //Name & info
                    Text('Simon Max', style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w800),),
                    SizedBox(height: 5.h,),
                    Text('Riksbyggen', style: TextStyle(fontSize: 14.sp, color: Color(0xff3D3F3E), fontWeight: FontWeight.w600),),
                    SizedBox(height: 5.h,),
                    Text('Årstavägen 14', style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600, color: Color(0xff3D3F3E)),),
                    SizedBox(height: 5.h,),

                    //Biography
                    Padding(
                      padding: EdgeInsets.all(20.r),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Divider(
                            height: 10.h,
                            color: Color(0xffD9D9D9),
                            thickness: 2.sp,
                          ),
                          SizedBox(height: 15.h,),

                          Text('Biography', style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w800),),
                          SizedBox(height: 15.h,),
                          Row(
                            children: [
                              Image.asset('icon/calendar.png', height: 18.h,color:Color(0xff3D3F3E)),
                              SizedBox(width: 12.w,),
                              Text('Neighbour since 2012', style: TextStyle(color: Color(0xff3D3F3E),fontSize: 15.sp ),),
                            ],
                          ),
                          SizedBox(height: 8.h,),
                          Row(
                            children: [
                              Image.asset('icon/world.png', height: 18.h,color:Color(0xff3D3F3E)),
                              SizedBox(width: 12.w,),
                              Text('English', style: TextStyle(color: Color(0xff3D3F3E),fontSize: 15.sp ),),
                            ],
                          ),
                          SizedBox(height: 8.h,),
                          Row(
                            children: [
                              Image.asset('icon/portfolio.png', height: 18.h,color:Color(0xff3D3F3E)),
                              SizedBox(width: 12.w,),
                              Text('Graphic Designer      ', style: TextStyle(color: Color(0xff3D3F3E),fontSize: 15.sp ),),
                            ],
                          ),
                          SizedBox(height: 15.h,),
                          Divider(
                            height: 10.h,
                            color: Color(0xffD9D9D9),
                            thickness: 2.sp,
                          ),
                          SizedBox(height: 15.h,),

                          // Interests
                          Text('Interests', style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w800),),
                          SizedBox(height: 10.h,),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 8.r, right: 8.r, top: 4.r, bottom:4.r),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r),
                                    border: Border.all(
                                        color:Color(0xffA1A0F2)
                                    ),
                                    color: Color(0xffEDEDFF)
                                ),
                                child: Center(
                                  child: Text('Sports & Fitness', style: TextStyle(color: Color(0xffA1A0F2), fontSize: 13.sp),),
                                ),
                              ),
                              SizedBox(width: 8.w,),
                              Container(
                                padding: EdgeInsets.only(left: 8.r, right: 8.r, top: 4.r, bottom: 4.r),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r),
                                    border: Border.all(
                                        color:Color(0xffA1A0F2)
                                    ),
                                    color: Color(0xffEDEDFF)
                                ),
                                child: Center(
                                  child: Text('Food & Drink', style: TextStyle(color: Color(0xffA1A0F2),fontSize: 13.sp)),
                                ),
                              ),
                              SizedBox(width: 8.w,),
                              Container(
                                padding: EdgeInsets.only(left: 8.r, right: 8.r, top: 4.r, bottom: 4.r),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r),
                                    border: Border.all(
                                        color:Color(0xffA1A0F2)
                                    ),
                                    color: Color(0xffEDEDFF)
                                ),
                                child: Center(
                                  child: Text('Pets', style: TextStyle(color: Color(0xffA1A0F2),fontSize: 13.sp)),
                                ),
                              ),
                              SizedBox(width: 8.w,),
                              Container(
                                padding: EdgeInsets.only(left: 8.r, right: 8.r, top: 4.r, bottom: 4.r),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r),
                                    border: Border.all(
                                        color:Color(0xffA1A0F2)
                                    ),
                                    color: Color(0xffEDEDFF)
                                ),
                                child: Center(
                                  child: Text('Online deals', style: TextStyle(color: Color(0xffA1A0F2),fontSize: 13.sp)),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h,),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 8.r, right: 8.r, top: 4.r, bottom:4.r),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r),
                                    border: Border.all(
                                        color:Color(0xffA1A0F2)
                                    ),
                                    color: Color(0xffEDEDFF)
                                ),
                                child: Center(
                                  child: Text('Hotels', style: TextStyle(color: Color(0xffA1A0F2), fontSize: 13.sp),),
                                ),
                              ),
                              SizedBox(width: 8.w,),
                              Container(
                                padding: EdgeInsets.only(left: 8.r, right: 8.r, top: 4.r, bottom: 4.r),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r),
                                    border: Border.all(
                                        color:Color(0xffA1A0F2)
                                    ),
                                    color: Color(0xffEDEDFF)
                                ),
                                child: Center(
                                  child: Text('Spa & Wellness', style: TextStyle(color: Color(0xffA1A0F2),fontSize: 13.sp)),
                                ),
                              ),
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
      )
    );
  }
}
