import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:social_media/constants/sizes.dart';
import '../../../../constants/styles.dart';
import '../../../controller/loginpage_controller.dart';

class CreateUser extends GetView<LoginPageController> {
  const CreateUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: heightSize(context),
          width: widthSize(context),
          color: wColor,
        )
      ],
    );
    // return Column(
    //   children: [
    //     LoginTextFormField(
    //       hintText: 'Mobile',
    //       length: 10,
    //       textEditingController: controller.mobController,
    //       keyboardType: TextInputType.number,
    //     ),
    //     LoginTextFormField(
    //       hintText: 'Username',
    //       textEditingController: controller.usernameController,
    //       keyboardType: TextInputType.name,
    //       length: 10,
    //     ),
    //     LoginTextFormField(
    //       hintText: 'Password',
    //       length: 6,
    //       textEditingController: controller.passwordController,
    //       keyboardType: TextInputType.visiblePassword,
    //     ),
    //     LoginTextFormField(
    //       hintText: 'Confirm Password',
    //       length: 6,
    //       textEditingController: controller.passwordController,
    //       keyboardType: TextInputType.visiblePassword,
    //     ),
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         TextButton(
    //             onPressed: () {
    //               controller.isLogin.value = true;
    //             },
    //             child: btext("LogIn ?")),
    //         TextButton(onPressed: () {}, child: btext("Reset"))
    //       ],
    //     ),
    //   ],
    // );
  }
}
