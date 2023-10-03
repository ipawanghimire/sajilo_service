import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sajilo_app/helper/constants.dart';
import 'package:sajilo_app/model/services_model.dart';
import 'package:sajilo_app/screen/widgets/custom_text.dart';
import 'package:sajilo_app/screen/widgets/hrline_widget.dart';

class ListScreen extends StatelessWidget {
  final String serviceTitle;
  const ListScreen({super.key, required this.serviceTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: AppConstamts().primaryColor,
        elevation: 0,
        title: CustomText(
          text: serviceTitle,
          size: 16.sp,
          color: AppConstamts().primaryColor,
          fontWeight: FontWeight.w700,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w).copyWith(top: 20.h),
        child: ListView.builder(
          // physics: const NeverScrollableScrollPhysics(),
          itemCount: serviceProvider.length,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                      serviceProvider[index].imageUrl,
                    ),
                  ),
                  trailing: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppConstamts().primaryColor,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('Book Now'),
                  ),
                  title: Text(serviceProvider[index].name),
                ),
                HrLine(),
                SizedBox(height: 10.h)
              ],
            );
          },
        ),
      ),
    );
  }
}
