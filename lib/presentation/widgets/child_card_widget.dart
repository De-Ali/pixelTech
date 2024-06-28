import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ChildCardWidget extends StatelessWidget {
  final bool? childStatus;
  const ChildCardWidget({
    super.key,
    this.childStatus,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 16.sp),
      // height: 260.sp,
      width: MediaQuery.of(context).size.width * 0.88,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.sp),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xff372775).withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 15,
            offset: const Offset(2, 4), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/childprofile.png",
                width: 32.sp,
                height: 32.sp,
              ),
              SizedBox(width: 8.sp),
              Text(
                "نور هاني",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: const Color(0xff000000),
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6.sp),
                height: 36.sp,
                width: 120.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                  border: Border.all(color: Color(0xffF2F3F7)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff372775).withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 15,
                      offset: const Offset(2, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 10.sp,
                      width: 10.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xff372775),
                      ),
                    ),
                    SizedBox(width: 4.sp),
                    Text(
                      "مع الحافلة",
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: const Color(0xff372775),
                      ),
                    ),
                    SizedBox(width: 4.sp),
                    Image.asset(
                      "assets/images/reloadIcon.png",
                      width: 16.sp,
                      height: 16.sp,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16.sp),
          Row(
            children: [
              Text(
                "الصف :",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: const Color(0xffF9AF42),
                ),
              ),
              SizedBox(width: 8.sp),
              Text(
                "5 - 9",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: const Color(0xff372775),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.sp),
          Row(
            children: [
              Text(
                "رقم الحافلة :",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: const Color(0xffF9AF42),
                ),
              ),
              SizedBox(width: 8.sp),
              Text(
                "123",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: const Color(0xff372775),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.sp),
          Row(
            children: [
              Text(
                "مشرف الحافلة :",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: const Color(0xffF9AF42),
                ),
              ),
              SizedBox(width: 8.sp),
              Text(
                "مني  أحمد",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: const Color(0xff372775),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 40.sp,
                width: 40.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.sp),
                  color: Color(0xff372775).withOpacity(0.1),
                ),
                child: Center(
                  child: Image.asset(
                    "assets/images/Call.png",
                    width: 20.sp,
                    height: 20.sp,
                  ),
                ),
              ),
              SizedBox(width: 8.sp),
              Container(
                height: 40.sp,
                width: 40.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.sp),
                  color: Color(0xfff8cb21).withOpacity(0.1),
                ),
                child: Center(
                  child: Image.asset(
                    "assets/images/Chat.png",
                    width: 20.sp,
                    height: 20.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.sp),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 43.sp,
                width: MediaQuery.of(context).size.width * 0.38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.sp),
                  color: const Color(0xff372775),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/Location.svg",
                      height: 20.sp,
                      width: 20.sp,
                    ),
                    SizedBox(width: 8.sp),
                    Text(
                      "تتبع الحافلة",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 43.sp,
                width: MediaQuery.of(context).size.width * 0.38,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffF9AF42)),
                  borderRadius: BorderRadius.circular(8.sp),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/camera.png",
                      width: 20.sp,
                      height: 20.sp,
                    ),
                    SizedBox(width: 8.sp),
                    Text(
                      "مشاهدة الحافلة",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        color: Color(0xffF9AF42),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
