// ignore_for_file: avoid_unnecessary_containers, unused_local_variable, non_constant_identifier_names, unused_element, dead_code

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pango_afrika/widgets/costum_widgets.dart';
import 'package:pango_afrika/widgets/small_text.dart';

import '../../../utils/colors.dart';
import '../../../widgets/app_text_field.dart';
import '../../../widgets/big_text.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    bool? isChecked = false;
    bool? isCheckeds = true;
    bool? male = true;
    bool? female = false;

    var emailController = TextEditingController();
    var phoneController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var SignUpImages = [
      "t.png",
      "f.png",
      "g.png",
    ];
    // void _registration(AuthController authController) {
    //   var authController = Get.find<AuthController>();
    //   String name = nameController.text.trim();
    //   String phone = phoneController.text.trim();
    //   String password = passwordController.text.trim();
    //   String email = emailController.text.trim();
    //
    //   if (name.isEmpty) {
    //     showCustomSnackBar("Type in your name", title: "Name");
    //   } else if (phone.isEmpty) {
    //     showCustomSnackBar("Type in your phone number", title: "phone number");
    //   } else if (email.isEmpty) {
    //     showCustomSnackBar("Type in your email", title: "email");
    //   } else if (!GetUtils.isEmail(email)) {
    //     showCustomSnackBar("Type in valid email address",
    //         title: "email address");
    //   } else if (password.isEmpty) {
    //     showCustomSnackBar("Type in your password", title: "password");
    //   } else if (password.length < 6) {
    //     showCustomSnackBar("Password can be not be less than six characters",
    //         title: "password");
    //   } else {
    //     //showCustomSnackBar("Done", title: "All done");
    //     SignUpBody signUpBody = SignUpBody(
    //         name: name, email: email, phone: phone, password: password);
    //     authController.registraion(signUpBody).then((status) {
    //       if (status.isSuccess!) {
    //         Get.toNamed(RouteHelper.getSignIn());
    //         print("Success registraion");
    //       } else {
    //         showCustomSnackBar(status.message!);
    //       }
    //     });
    //     print(signUpBody.toString());
    //   }
    // }

    return Scaffold(
      //   body: GetBuilder<AuthController>(builder: (_authController) {
      //       // return !_authController.isLoading
      //       //     ?
        body:SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.07),
                  Container(
                    child:  Center(
                      child: SmallText(text: 'CREER UN COMPTE SUR PANGO AFRIKA',)
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                    BoxShadow(
                    color: Colors.grey[500]!,
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(
                          1, 5), // changes position of shadow
                    ),
                      ]
                    ),
                    child: const Center(
                      child: Icon(Icons.person,size: 50,)
                    ),
                  ),
                  const SizedBox(
                    height:10,
                  ),
                  AppTextField(
                    //textEditingController: nameController,
                      hintText: "Nom et prenom",
                      icon: CupertinoIcons.person),
                  const SizedBox(
                    height: 10,
                  ),
                  AppTextField(
                    //textEditingController: passwordController,
                      hintText: "Ville",
                      //isObscure: true,
                      icon: CupertinoIcons.house),
                  const SizedBox(
                    height:10,
                  ),
                  AppTextField(
                    //textEditingController: passwordController,
                      hintText: "Pays de residence",
                      //isObscure: true,
                      icon: CupertinoIcons.flag),
                  const SizedBox(
                    height:10,
                  ),
                  AppTextField(
                    // textEditingController: phoneController,
                      hintText: "Numero de telephone",
                      icon: Icons.phone),
                  const SizedBox(
                    height: 10,
                  ),
                  AppTextField(
                      //textEditingController: emailController,
                      hintText: "Email",
                      icon: CupertinoIcons.mail),
                  const SizedBox(
                    height: 10,
                  ),
                  AppTextField(
                      //textEditingController: passwordController,
                      hintText: "Mot de passe",
                      isObscure: true,
                      icon: CupertinoIcons.padlock),
                  const SizedBox(
                    height:10,
                  ),Container(
                    height: 100,
                    margin: const EdgeInsets.only(
                        left: 20, right: 20),
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 3,
                          offset: const Offset(1, 1),
                          color: Colors.grey.withOpacity(0.2),
                        )
                      ],
                    ),
                    child:  Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5,right: 10,left: 10),
                              child: Row(
                                children: [
                                  BigText(text: 'Categorie: '),
                                  Row(children: [
                                    Row(
                                      children: [
                                        const SizedBox(width: 20,),
                                        CustomCheck(
                                          value: isChecked,
                                          activeColor: AppColors.greenColor,
                                          type: CheckType.circle,
                                          size: 24,
                                          builder: (ctx, size) {
                                            return Icon(
                                              Icons.star,
                                              color: Colors.white,
                                              size: size,
                                            );
                                          },
                                            onChanged: (value) {
                                              setState(() {
                                                isChecked = value;
                                              });
                                            },),
                                        SmallText(text: 'Client'),
                                      ],
                                    ),
                                    SizedBox(width: 15,),
                                    Row(
                                      children: [
                                        const SizedBox(width: 20,),
                                        CustomCheck(
                                          value: isCheckeds,
                                          activeColor: AppColors.greenColor,
                                          type: CheckType.circle,
                                          size: 24,
                                          builder: (ctx, size) {
                                            return Icon(
                                              Icons.star,
                                              color: Colors.white,
                                              size: size,
                                            );
                                          },
                                          onChanged: (value) {
                                            setState(() {
                                              isCheckeds = value;
                                            });
                                          },),
                                        SmallText(text: 'Partenaire'),
                                      ],
                                    ),
                                  ],),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5,right: 10,left: 10),
                              child: Row(
                                children: [
                                  BigText(text: 'Genre: '),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 30,left: 30),
                                    child: Row(children: [
                                      //const SizedBox(width: 20,),
                                      Row(
                                        children: [
                                          const SizedBox(width: 5,),
                                          CustomCheck(
                                            value: male,
                                            activeColor: AppColors.greenColor,
                                            type: CheckType.circle,
                                            size: 24,
                                            builder: (ctx, size) {
                                              return Icon(
                                                Icons.star,
                                                color: Colors.white,
                                                size: size,
                                              );
                                            },
                                            onChanged: (value) {
                                              setState(() {
                                                male = value;
                                              });
                                            },),
                                          SmallText(text: 'Masculin'),
                                        ],
                                      ),
                                      SizedBox(width: 15,),
                                      const SizedBox(width: 20,),
                                      Row(
                                        children: [
                                          CustomCheck(
                                            value: female,
                                            activeColor: AppColors.greenColor,
                                            type: CheckType.circle,
                                            size: 24,
                                            builder: (ctx, size) {
                                              return Icon(
                                                Icons.star,
                                                color: Colors.white,
                                                size: size,
                                              );
                                            },
                                            onChanged: (value) {
                                              setState(() {
                                                female = value;
                                              });
                                            },),
                                          SmallText(text: 'Feminin'),
                                        ],
                                      ),
                                    ],),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                    ],),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                     // _registration(_authController);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      height: MediaQuery.of(context).size.height /14,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(5),
                          color: AppColors.greenColor),
                      child: Center(
                        child: BigText(
                          text: "S'identifier",
                          size:20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      text: " Deja inscrit ?",
                      style: TextStyle(
                          color: Colors.grey[500], fontSize: 15),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.back(),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  // RichText(
                  //   text: TextSpan(
                  //     text: " Sign up using of the following methods ",
                  //     style: TextStyle(
                  //         color: Colors.grey[500], fontSize: 15),
                  //     // recognizer: TapGestureRecognizer()..onTap = () => Get.back(),
                  //   ),
                  // ),
                  // Wrap(
                  //   children: List.generate(
                  //     3,
                  //     (index) => Padding(
                  //       padding: const EdgeInsets.all(8.0),
                  //       child: CircleAvatar(
                  //         radius: 30,
                  //         backgroundImage: AssetImage(
                  //           "assets/image/" + SignUpImages[index],
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // )
                ],
              ),
            ));
          // : const CustomLoader();

  }
}
