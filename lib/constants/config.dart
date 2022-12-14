import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:landina_coupon/services/api.services.dart';

class Config {
  Config._();
  static bool loggedIn = false;
  static bool inProfile = false;

  static TextEditingController usernameController = TextEditingController();
  static TextEditingController emailController = TextEditingController();
  static TextEditingController passwordController = TextEditingController();

  static ApiService client = ApiService();

  static GetStorage box = GetStorage();

  static validateEmail(String? value) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return 'لطفا یک آدرس ایمیل معتبر وارد کن';
    } else {
      return null;
    }
  }
}
