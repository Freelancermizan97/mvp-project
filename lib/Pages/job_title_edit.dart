import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JobTitleEdit extends StatefulWidget
{
  @override
  State<JobTitleEdit> createState() => _JobTitleEditState();
}



class _JobTitleEditState extends State<JobTitleEdit>
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
        title:  Text('Job Title', style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w900, color: Colors.black),),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.r),
            child: Center(child: Text('Save', style: TextStyle(color: Color(0xffB0B0B0), fontSize: 16.sp, fontWeight: FontWeight.w700),)),
          )
        ],
      ),
      body: ListView(
        children: const [
          ListTile(
            selected: true,
            selectedTileColor:Color(0xffE8E8FF) ,

            title: Text('Developer', style: TextStyle(color: Colors.black),),
          ),
          ListTile(
            title: Text('Developer', style: TextStyle(color: Colors.black),),
          ),
          ListTile(
            title: Text('Backend Developer', style: TextStyle(color: Colors.black),),
          ),
          ListTile(
            title: Text('Forntend developer', style: TextStyle(color: Colors.black),),
          ),
          ListTile(
            title: Text('System developer', style: TextStyle(color: Colors.black),),
          ),
          ListTile(
            title: Text('Java developer ', style: TextStyle(color: Colors.black),),
          ),
        ],
      )
    );
  }
}
