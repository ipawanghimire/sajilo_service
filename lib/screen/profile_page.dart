import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sajilo_app/helper/constants.dart';
import 'package:sajilo_app/screen/widgets/custom_text.dart';
import 'package:sajilo_app/screen/widgets/hrline_widget.dart';
import 'package:sajilo_app/screen/widgets/profile_menu_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            HrLine(),
            SizedBox(
              height: 20.h,
            ),
            ProfileMenu(),
          ]),
        ),
      ),
    );
  }
}
