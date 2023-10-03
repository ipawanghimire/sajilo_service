import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sajilo_app/screen/navbar_screen.dart';
import 'package:sajilo_app/screen/widgets/custom_button.dart';

import 'package:sajilo_app/screen/widgets/custom_text_field.dart';
import 'package:sajilo_app/screen/widgets/dropdown.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController numberController = TextEditingController();
    double widgetWidth = 250.0; // Define the desired width

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black,
                Color.fromARGB(202, 11, 33, 52)
              ], // Gradient colors
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: const AssetImage("assets/images/logo.jpg"),
                  maxRadius: 100.r,
                ),
                SizedBox(height: 50.h),
                SizedBox(
                  width: widgetWidth,
                  child: DropDownWidget(),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  width: widgetWidth,
                  child: CustomTextFormField(
                    controller: numberController,
                    keyboardType: TextInputType.number,
                    hintText: 'Phone Number',
                  ),
                ),
                SizedBox(height: 30.h),
                CustomButton(
                  text: 'Login',
                  backgroundColor: Colors.green,
                  textColor: Colors.white,
                  padding:
                      EdgeInsets.symmetric(vertical: 15.h, horizontal: 30.w),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => NavBarScreen(),
                    ));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
