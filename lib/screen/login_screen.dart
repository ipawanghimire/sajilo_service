import 'package:flutter/material.dart';
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
      body: Container(
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
              const CircleAvatar(
                backgroundImage: AssetImage("assets/images/logo.jpg"),
                maxRadius: 100,
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: widgetWidth,
                child: DropDownWidget(),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: widgetWidth,
                child: CustomTextFormField(
                  controller: numberController,
                  keyboardType: TextInputType.number,
                  hintText: 'Phone Number',
                ),
              ),
              const SizedBox(height: 30),
              CustomButton(
                text: 'Login',
                backgroundColor: Colors.green,
                textColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                onPressed: () {
                  // Add your button's onPressed logic here
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
