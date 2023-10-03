import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sajilo_app/helper/constants.dart';
import 'package:sajilo_app/screen/services_grid.dart';
import 'package:sajilo_app/screen/widgets/banner_widget.dart';
import 'package:sajilo_app/screen/widgets/custom_text.dart';
import 'package:sajilo_app/screen/widgets/hrline_widget.dart';
import 'package:sajilo_app/screen/widgets/tiitle_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
          ).copyWith(top: 20.h),
          child: Column(children: [
            SizedBox(
              height: 40.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: AppConstamts().primaryColor,
                  radius: 30.r,
                ),
                SizedBox(
                  width: 8.w,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 8.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "Pawan Ghimire",
                          fontWeight: FontWeight.w700,
                          size: 12.sp,
                        ),
                        CustomText(
                          text: "User",
                          color: Colors.grey,
                          size: 12.sp,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.notifications,
                    size: 28.sp,
                    color: AppConstamts().primaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            const BannerWidget(),
            SizedBox(
              height: 20.h,
            ),
            const TitleWidget(text: "Our Services"),
            SizedBox(
              height: 4.h,
            ),
            const HrLine(),
            SizedBox(
              height: 8.h,
            ),
            const Services(),
            SizedBox(
              height: 10.h,
            ),
            const TitleWidget(text: "Upcoming Services"),
            SizedBox(
              height: 4.h,
            ),
            const HrLine(),
            SizedBox(
              height: 4.h,
            ),
            const BannerWidget(),
            SizedBox(
              height: 20.h,
            ),
          ]),
        ),
      ),
    );
  }
}
