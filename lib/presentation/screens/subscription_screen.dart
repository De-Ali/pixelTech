import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  List<bool> isCheckedList = List<bool>.filled(6, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16.sp),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 48.sp,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff372775).withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 15,
                        offset:
                            const Offset(2, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            right: 16.sp, top: 8.sp, bottom: 8.sp),
                        height: 32.sp,
                        width: 32.sp,
                        decoration: BoxDecoration(
                          color: const Color(0xff372775),
                          borderRadius: BorderRadius.circular(4.sp),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 14.sp,
                          ),
                        ),
                      ),
                      Text(
                        "الرسوم الدراسية",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black,
                        ),
                      ),
                      Container(),
                    ],
                  ),
                ),
                SizedBox(height: 24.sp),
                Container(
                  height: 45.sp,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.sp),
                    border: Border.all(
                      color: const Color(0xff372775),
                      width: 8,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "الرسوم الدراسية",
                      style: TextStyle(fontSize: 14.sp),
                    ),
                  ),
                ),
                SizedBox(height: 12.sp),
                Container(
                  height: 48.sp,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.sp),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff372775).withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 15,
                        offset:
                            const Offset(2, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Row(
                      children: [
                        Text(
                          "المتبقي :",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: const Color(0xffF9AF42),
                          ),
                        ),
                        Text(
                          "1300 ريال عماني",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: const Color(0xff372775),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40.sp),
                Container(
                  padding: EdgeInsets.only(top: 5.sp),
                  height: 57.sp,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.sp),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff372775).withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 15,
                        offset:
                            const Offset(2, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 16.0, left: 40.sp),
                        child: Row(
                          children: [
                            Text(
                              "رسوم شهر سبتمبر",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: const Color(0xff252525),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              height: 10.sp,
                              width: 10.sp,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: const Color(0xffF9AF42),
                              ),
                            ),
                            SizedBox(width: 4.sp),
                            Text(
                              "مدفوع",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: const Color(0xffF9AF42),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.sp),
                      Padding(
                        padding: EdgeInsets.only(right: 16.0, left: 40.sp),
                        child: Row(
                          children: [
                            Text(
                              "المبلغ المطلوب 100 ريال عماني",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: const Color(0xff494F50),
                              ),
                            ),
                            const Spacer(),
                            Text(
                              "الفاتورة",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: const Color(0xff372775),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.sp),
                subscriptionListTile(
                  context: context,
                  title: "رسوم شهر أكتوبر",
                  subTitle: "المتبقي : 1300 ريال عماني",
                  index: 0,
                ),
                SizedBox(height: 16.sp),
                subscriptionListTile(
                  context: context,
                  title: "رسوم شهر نوفمبر",
                  subTitle: "المتبقي : 1300 ريال عماني",
                  index: 1,
                ),
                SizedBox(height: 16.sp),
                subscriptionListTile(
                    context: context,
                    title: "رسوم شهر مارس",
                    subTitle: "المتبقي : 1300 ريال عماني",
                    index: 2,
                    ischeckbox: false),
                SizedBox(height: 16.sp),
                subscriptionListTile(
                    context: context,
                    title: "رسوم شهر أبريل",
                    subTitle: "المتبقي : 1300 ريال عماني",
                    index: 3,
                    ischeckbox: false),
                SizedBox(height: 16.sp),
                subscriptionListTile(
                    context: context,
                    title: "رسوم شهر مايو",
                    subTitle: "المتبقي : 1300 ريال عماني",
                    index: 4,
                    ischeckbox: false),
                SizedBox(height: 30.sp),
                InkWell(
                  onTap: () {
                    // Navigator.pushNamed(context, '/HomeScreen');
                  },
                  child: Container(
                    height: 43.sp,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.sp),
                      color: const Color(0xff372775),
                    ),
                    child: Center(
                      child: Text(
                        "الدفع",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.sp),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container subscriptionListTile({
    required BuildContext context,
    required String title,
    required String subTitle,
    required int index,
    bool? ischeckbox = true,
  }) {
    return Container(
      padding: EdgeInsets.only(top: 5.sp),
      height: 57.sp,
      width: MediaQuery.of(context).size.width * 0.9,
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
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 16.0, left: 40.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: const Color(0xff252525),
                      ),
                    ),
                    Text(
                      subTitle,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: const Color(0xff494F50),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8.sp),
            ],
          ),
          const Spacer(),
          ischeckbox ?? true
              ? Checkbox(
                  value: isCheckedList[index],
                  activeColor: const Color(0xff372775),
                  checkColor: Colors.white,
                  onChanged: (value) {
                    setState(() {
                      isCheckedList[index] = value!;
                    });
                  },
                )
              : Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0.sp),
                  child: SvgPicture.asset("assets/icons/checkdisabled.svg"),
                ),
          SizedBox(width: 18.sp),
        ],
      ),
    );
  }
}
