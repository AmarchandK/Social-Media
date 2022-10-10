import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_in_button/sign_in_button.dart';
import '../../constants/sizes.dart';
import '../../constants/styles.dart';
import '../../controller/loginpage_controller.dart';
import 'otp_screen.dart';
import 'widgets/button.dart';
import 'widgets/create_acc.dart';
import 'widgets/login.dart';

class Authentication extends GetView<LoginPageController> {
  const Authentication({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          ClipPath(
            clipper: _BagroundClipper(),
            child: Container(
              height: size.height / 1.2,
              width: size.width,
              decoration: const BoxDecoration(color: yColor),
            ),
          ),
          Container(
            color: Colors.transparent,
            height: size.height,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    h20,
                    Image(
                      image: const AssetImage('assets/projector.png'),
                      height: size.height / 3,
                      width: size.height / 3,
                    ),
                    h20,
                    Obx(() => controller.isLogin.value
                        ? const Login()
                        : const CreateUser()),
                    SignInButton(
                      Buttons.googleDark,
                      onPressed: () {},
                    ),
                    h10,
                    SignInButton(Buttons.facebookNew, onPressed: () {
                    }),
                    h20,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => controller.isLogin.value
            ? OnTapButton(
                text: "LogIn",
                onTap: () {
                  Get.to(() => OTPscreen());
                },
              )
            : OnTapButton(
                text: "Create User",
                onTap: () {
                  Get.to(() => OTPscreen());
                },
              ),
      ),
    );
  }
}

class _BagroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(size.width, 0);

    path.lineTo(size.width, size.height - size.height / 1.4);

    path.lineTo(0, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
