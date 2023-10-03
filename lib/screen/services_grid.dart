import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sajilo_app/helper/constants.dart';
import 'package:sajilo_app/model/services_model.dart';
import 'package:sajilo_app/screen/list_screen.dart';
import 'package:sajilo_app/screen/widgets/custom_text.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 7,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        final service = services[index];
        return InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ListScreen(
                      serviceTitle: service.name,
                    )));
          },
          child: Card(
            elevation: 0.2.h,
            color: Colors.white,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40.r,
                  backgroundImage: AssetImage(
                    service.imageUrl,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                    text: service.name,
                    size: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: AppConstamts().primaryColor,
                  ),
                ),
              ],
            ),
          ),
        );
      },
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
    );
  }
}
