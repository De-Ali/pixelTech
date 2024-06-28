import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusDetailCard extends StatelessWidget {
  const BusDetailCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.sp, // Adjust the height based on your needs
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 16.sp), // spacing between items
            height: 70.sp,
            width: MediaQuery.of(context).size.width * 0.85,
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
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/school-bus.png",
                        width: 32.sp,
                        height: 32.sp,
                      ),
                      SizedBox(width: 8.sp),
                      Text(
                        "Bus - 547",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xff372775),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 10.sp,
                        width: 10.sp,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color(0xffF9AF42),
                        ),
                      ),
                      SizedBox(width: 8.sp),
                      Text(
                        "وصل المدرسة",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: const Color(0xffF9AF42),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
