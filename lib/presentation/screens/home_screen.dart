import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixel_tech_assessment/presentation/widgets/bus_card_detail.dart';
import 'package:pixel_tech_assessment/presentation/widgets/child_card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7FA),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70.sp,
            pinned: true,
            expandedHeight: 110.5.sp,
            automaticallyImplyLeading: false,
            backgroundColor: Color(0xff372775),
            leading: Container(
              padding: EdgeInsets.only(right: 16.sp, top: 8.sp, bottom: 8.sp),
              child: Image.asset(
                "./assets/images/profile.png",
                width: 40.sp,
                height: 40.sp,
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "أهلا بك",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "محمد هاني محمد",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.only(left: 16.sp, bottom: 16.sp),
              background: Image.asset(
                "./assets/images/apbg1.png",
                fit: BoxFit.cover,
              ),
            ),
            actions: [
              Container(
                padding: EdgeInsets.only(left: 16.sp, top: 8.sp, bottom: 8.sp),
                child: Image.asset(
                  "./assets/images/notification.png",
                  width: 24.sp,
                  height: 24.sp,
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BusDetailCard(),
                  SizedBox(height: 16.sp),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
                    child: Text(
                      "الأولاد",
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: const Color(0xff372775),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.sp),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: ListView.separated(
                      itemCount: 5,
                      shrinkWrap: true,
                      separatorBuilder: (context, index) => SizedBox(
                        height: 16.sp,
                      ),
                      itemBuilder: (context, index) => const ChildCardWidget(),
                    ),
                  ),
                  64.verticalSpace,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
