import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/colors.dart';
import '../../../widgets/app_text_field.dart';
import '../../../widgets/big_text.dart';
import '../register/sign_up.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
           SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            //logo
            Container(
              child: const Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 90,
                  backgroundImage: AssetImage("assets/images/globe.png"),
                ),
              ),
            ),
            SizedBox(height: 10),
            //welcome
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(left: 20),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bonjour",
                    style: TextStyle(
                      fontSize:
                      20 * 3 + 20 / 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Veuillez entrer vos informations",
                    style: TextStyle(
                      color: Colors.grey,
                      //fontSize: Dimensions.font20 * 3 + Dimensions.font20 / 2,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            //email
            AppTextField(
                //textEditingController: emailController,
                hintText: "Email",
                icon: CupertinoIcons.mail),
            SizedBox(
              height: 15,
            ),
            //password
            AppTextField(
                isObscure: true,
                //textEditingController: passwordController,
                hintText: "Mot de passe",
                icon: CupertinoIcons.padlock_solid
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Container()),
                RichText(
                  text: TextSpan(
                    text: "Mot de passe oublier ?",
                    style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 15
                    ),
                    // recognizer: TapGestureRecognizer()..onTap = () => Get.back(),
                  ),
                ),
                const SizedBox(width: 20),
                SizedBox()
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                print('object');
                //_login(authController);
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 1.5,
                height: MediaQuery.of(context).size.height /14,
                decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(10),
                    color: AppColors.greenColor
                ),
                child: Center(
                  child: BigText(
                    text: "Se connecter",
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    text: " Pas encore de compte ? ",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 14,
                    ),
                  ),
                ),

                RichText(
                  text: TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                      Get.to(SignUp());
                        print("tapped");
                      },
                    text: " Creer un compte",
                    style: const TextStyle(
                      color: AppColors.mainBlackColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            // Wrap(
            //   children: List.generate(
            //     3,
            //     (index) => Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: CircleAvatar(
            //         radius: Dimensions.radius30,
            //         backgroundImage: AssetImage(
            //           "assets/image/" + SignInImages[index],
            //         ),
            //       ),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
