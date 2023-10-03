import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sajilo_app/helper/constants.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150.h,
          width: 350.w,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/banner.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 8.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
                backgroundColor: AppConstamts().primaryColor, radius: 5.r),
            SizedBox(width: 4.w),
            CircleAvatar(backgroundColor: Colors.grey, radius: 5.r),
          ],
        )
      ],
    );
  }
}
