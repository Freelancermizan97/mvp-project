import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AreaEdit extends StatefulWidget
{
  @override
  State<AreaEdit> createState() => _AreaEditState();
}





class _AreaEditState extends State<AreaEdit>
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

          title:  Text('Area', style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w900, color: Colors.black),),

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

              title: Text('Bandhagen', style: TextStyle(color: Colors.black),),
            ),

            ListTile(
              title: Text('Stockholm ', style: TextStyle(color: Colors.black),),
            ),

            ListTile(
              title: Text('Årtsa', style: TextStyle(color: Colors.black),),
            ),

          ],
        )
    );
  }
}
