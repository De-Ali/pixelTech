import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pixel_tech_assessment/providers/main_screen_provider.dart';
import 'package:pixel_tech_assessment/presentation/screens/home_screen.dart';
import 'package:pixel_tech_assessment/presentation/screens/subscription_screen.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      const HomeScreen(),
      const Center(
        child: Text("Chat"),
      ),
      const SubscriptionScreen(),
      const Center(
        child: Text("Profile"),
      ),
    ];
    return Consumer<MainScreenProvider>(
      builder: (context, provider, child) => Scaffold(
        body: screens[provider.selectedIndex],
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(8.0),
          child: GNav(
            backgroundColor: Colors.white,
            tabs: [
              GButton(
                padding:
                    EdgeInsets.symmetric(vertical: 12.sp, horizontal: 12.sp),
                onPressed: () {
                  provider.onItemTapped(0);
                },
                leading: provider.selectedIndex != 0
                    ? null
                    : SvgPicture.asset(
                        "./assets/icons/home.svg",
                        width: 32.sp,
                        height: 32.sp,
                        // fit: BoxFit.cover,
                      ),
                icon: Icons.home_rounded,
                text: "الرئيسية",
                textColor: Colors.white,
                iconActiveColor: Colors.white,
                iconColor: Colors.grey,
                backgroundGradient: const LinearGradient(
                  colors: [Color(0xff655CEB), Color(0xff5149C4)],
                ),
              ),
              GButton(
                padding:
                    EdgeInsets.symmetric(vertical: 12.sp, horizontal: 12.sp),
                onPressed: () {
                  provider.onItemTapped(1);
                },
                textColor: Colors.white,
                iconActiveColor: Colors.white,
                icon: Icons.chat_bubble_outline_outlined,
                iconColor: Colors.grey,
                text: "chat",
                backgroundGradient: const LinearGradient(
                  colors: [Color(0xff655CEB), Color(0xff5149C4)],
                ),
              ),
              GButton(
                padding:
                    EdgeInsets.symmetric(vertical: 12.sp, horizontal: 12.sp),
                onPressed: () {
                  provider.onItemTapped(2);
                },
                textColor: Colors.white,
                iconActiveColor: Colors.white,
                iconColor: Colors.grey,
                icon: Icons.receipt_long_rounded,
                text: "subscriptions",
                backgroundGradient: const LinearGradient(
                  colors: [Color(0xff655CEB), Color(0xff5149C4)],
                ),
              ),
              GButton(
                padding:
                    EdgeInsets.symmetric(vertical: 12.sp, horizontal: 12.sp),
                onPressed: () {
                  provider.onItemTapped(3);
                },
                textColor: Colors.white,
                iconActiveColor: Colors.white,
                icon: Icons.person_outlined,
                iconColor: Colors.grey,
                text: "profile",
                backgroundGradient: const LinearGradient(
                  colors: [Color(0xff655CEB), Color(0xff5149C4)],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
