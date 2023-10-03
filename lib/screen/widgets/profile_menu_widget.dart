import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sajilo_app/helper/constants.dart';
import 'package:sajilo_app/screen/widgets/custom_button.dart';
import 'package:sajilo_app/screen/widgets/custom_text.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 40.h,
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  color: AppConstamts().primaryColor,
                  width: 1.w,
                )),
            child: Row(
              children: [
                Icon(Icons.person,
                    size: 26.sp, color: AppConstamts().primaryColor),
                SizedBox(
                  width: 20.w,
                ),
                CustomText(text: 'Profile', fontWeight: FontWeight.w600),
              ],
            )),
        SizedBox(
          height: 10.h,
        ),
        Container(
            height: 40.h,
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  color: AppConstamts().primaryColor,
                  width: 1.w,
                )),
            child: Row(
              children: [
                Icon(Icons.person,
                    size: 26.sp, color: AppConstamts().primaryColor),
                SizedBox(
                  width: 20.w,
                ),
                CustomText(text: 'Profile', fontWeight: FontWeight.w600),
              ],
            )),
        SizedBox(
          height: 10.h,
        ),
        Container(
            height: 40.h,
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  color: AppConstamts().primaryColor,
                  width: 1.w,
                )),
            child: Row(
              children: [
                Icon(Icons.person,
                    size: 26.sp, color: AppConstamts().primaryColor),
                SizedBox(
                  width: 20.w,
                ),
                CustomText(text: 'Profile', fontWeight: FontWeight.w600),
              ],
            )),
        SizedBox(
          height: 10.h,
        ),
        Container(
            height: 40.h,
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  color: AppConstamts().primaryColor,
                  width: 1.w,
                )),
            child: Row(
              children: [
                Icon(Icons.person,
                    size: 26.sp, color: AppConstamts().primaryColor),
                SizedBox(
                  width: 20.w,
                ),
                CustomText(text: 'Profile', fontWeight: FontWeight.w600),
              ],
            )),
        SizedBox(
          height: 100.h,
        ),
        CustomButton(
          padding: EdgeInsets.symmetric(horizontal: 80.w, vertical: 15.h),
          text: "Logout",
          onPressed: () {},
          backgroundColor: AppConstamts().primaryColor,
        )
      ],
    );
  }
}
