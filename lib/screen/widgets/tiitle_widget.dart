import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sajilo_app/screen/widgets/custom_text.dart';

class TitleWidget extends StatelessWidget {
  final String text;
  const TitleWidget({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 30.h,
          width: 5.w,
          decoration: const BoxDecoration(
            color: Colors.orangeAccent,
          ),
        ),
        SizedBox(
          width: 4.w,
        ),
        CustomText(
          text: text,
          size: 16.sp,
          fontWeight: FontWeight.w700,
          color: Colors.orangeAccent,
        ),
      ],
    );
  }
}
