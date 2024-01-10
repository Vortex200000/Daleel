import 'package:dlaeelel23aka/config/route/Routes.dart';
import 'package:dlaeelel23aka/core/utils/AppColors.dart';
import 'package:dlaeelel23aka/core/utils/AppStrings.dart';
import 'package:dlaeelel23aka/features/HomeScreen/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> logKey = GlobalKey<FormState>();

  // const Login({super.key});
  bool flag = false;
  double passWidth = 300.w;
  double passHeight = 80.h;

  double emailWidth = 300.w;
  double emailHeight = 80.h;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Form(
          key: logKey,
          child: Column(
            children: [
              SizedBox(
                height: 200.h,
              ),
              Center(
                  child: Text(
                AppStrings.login,
                style: Theme.of(context).textTheme.bodyLarge,
              )),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45, right: 45),
                child: Column(
                  children: [
                    AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      width: emailWidth,
                      height: emailHeight,
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'This field is required';
                          } else
                            return null;
                        },
                        style: TextStyle(color: Colors.white),
                        onTap: () {
                          setState(() {
                            emailWidth = 320.w;

                            passWidth = 300.w;
                          });
                        },
                        onTapOutside: (event) {
                          setState(() {
                            emailWidth = 300.w;
                          });
                        },
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColors.widgetColor,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            hintText: 'Email',
                            hintStyle: TextStyle(color: Colors.white),
                            prefixIcon: Icon(
                              FontAwesomeIcons.solidEnvelope,
                              color: Colors.white,
                            )),
                        cursorColor: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      width: passWidth,
                      height: passHeight,
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'This field is required';
                          } else
                            return null;
                        },
                        style: TextStyle(color: Colors.white),
                        onTap: () {
                          setState(() {
                            passWidth = 320.w;

                            emailWidth = 300.w;
                          });
                        },
                        onTapOutside: (event) {
                          setState(() {
                            passWidth = 300.w;
                          });
                        },
                        obscureText: flag == false ? true : false,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColors.widgetColor,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            hintStyle: TextStyle(color: Colors.white),
                            hintText: 'Password',
                            prefixIcon: Icon(
                              FontAwesomeIcons.lock,
                              color: Colors.white,
                            ),
                            suffixIcon: InkWell(
                              onTap: () {
                                if (flag == false) {
                                  setState(() {
                                    flag = true;
                                  });
                                } else
                                  setState(() {
                                    flag = false;
                                  });
                              },
                              child: flag == false
                                  ? Icon(
                                      FontAwesomeIcons.eyeSlash,
                                      color: Colors.white,
                                      size: 15,
                                    )
                                  : Icon(
                                      FontAwesomeIcons.eye,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                            )

                            // label: Text('User Name' , style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 15 , fontWeight: FontWeight.w100)),
                            ),
                        cursorColor: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    SizedBox(
                      width: 250.h,
                      height: 50.h,
                      child: ElevatedButton(
                        onPressed: () {
                          if (logKey.currentState!.validate()) {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeView(),
                                ),
                                (route) => false);
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              FontAwesomeIcons.rightToBracket,
                              size: 20,
                            ),
                            Text(
                              AppStrings.login,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.widgetColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13))),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      'New User ?',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    SizedBox(
                      width: 250.h,
                      height: 50.h,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, RoutesNames.signUp);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              FontAwesomeIcons.userPlus,
                              size: 20,
                            ),
                            Text(
                              AppStrings.signup,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.widgetColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13))),
                      ),
                    ),
                    SizedBox(
                      height: 200.h,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
