import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:landina_coupon/ui/components/modals/login.modal.dart';
import 'package:landina_coupon/ui/widgets/appbar/appbar.dart';
import 'package:landina_coupon/ui/widgets/button/button.dart';
import 'package:landina_coupon/ui/widgets/textfield/textfield.dart';

class ForgetPage extends StatelessWidget {
  const ForgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: LandinaAppbar(
          title: "فراموشی رمز",
          rightIcon: IconlyLight.category,
          rightIconOnPressed: () {},
          leftIcon: IconlyLight.arrow_left,
          leftIconOnPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Container(
          width: 325,
          constraints: const BoxConstraints(
            maxWidth: 325,
            minWidth: 50,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: const Text(
                  "لطفا برای بازیابی رمز آدرس ایمیل خود را وارد کنید.",
                ),
              ),
              const SizedBox(height: 15),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: LandinaTextField(
                  hintText: "آدرس ایمیل",
                  suffixIcon: IconlyLight.info_circle,
                  suffixIconOnPressed: () {
                    loginModal(context);
                  },
                  prefixIcon: IconlyLight.user,
                  prefixIconOnPressed: () {},
                  obscureText: false,
                ),
              ),
              const SizedBox(height: 15),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: LandinaButton(
                  title: "ارسال ایمیل بازیابی",
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}