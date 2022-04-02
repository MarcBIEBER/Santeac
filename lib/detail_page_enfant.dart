import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:santeac/icons.dart';
import 'package:santeac/widgets/svg_asset.dart';
import 'package:collection/collection.dart';


class DetailPageEnfant extends StatefulWidget {
  const DetailPageEnfant({Key? key}) : super(key: key);

  @override
  _DetailPageEnfantState createState() => _DetailPageEnfantState();
}

class _DetailPageEnfantState extends State<DetailPageEnfant> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121421),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              physics: BouncingScrollPhysics(),
              children: [
                SizedBox(height: 66.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Hero(
                    tag: "enfant",
                    child: Material(
                      color: Colors.transparent,
                      child: Text("Chambre de l'enfant",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 34.w,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Padding(padding: EdgeInsets.only(left: 28.w),
                  child: Text("petit text sur bébé\n",
                    style: TextStyle(
                      color: Color(0xffffffff).withOpacity(0.7),
                      fontWeight: FontWeight.w400,
                      fontSize: 16.w
                    ),
                  ),
                ),
                SizedBox(
                  height: 550.h,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    children: [
                      SizedBox(height: 20.h),
                      Container(
                        height: 80.w,
                        width: 280.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/pics/pic1.png"),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Container(
                        height: 80.w,
                        width: 280.w,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/pics/pic2.jpg",
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Container(
                        height: 80.w,
                        width: 280.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/pics/pic1.png"),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Container(
                        height: 80.w,
                        width: 280.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/pics/pic2.jpg"),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Container(
                        height: 80.w,
                        width: 280.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/pics/pic1.png"),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Container(
                        height: 80.w,
                        width: 280.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/pics/pic2.jpg"),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Container(
                        height: 80.w,
                        width: 280.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/pics/pic1.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            ),

            Align(alignment: Alignment.topCenter,
            child:   Container(
              color:  Color(0xff121421),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 22.w,
                  right: 22.w,
                  top: 20.h,
                  bottom: 10.h
                ),
                child: Material(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(360),
                        onTap: onBackIconTapped,
                        child: Container(
                          height: 35.w,
                          width: 35.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(360),
                          ),
                          child: Center(
                            child: SvgAsset(
                              assetName: AssetName.back,
                              height: 20.w,
                              width: 20.w,
                            ),
                          ),
                        ),
                      ),





                    ],
                  ),
                ),
              ),
            )
            ),
          ],
        ),
      )

    );
  }
}

void onBackIconTapped() {
  Get.back();
}