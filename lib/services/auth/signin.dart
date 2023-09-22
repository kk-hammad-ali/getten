import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SignInController extends GetxController {
  final isLoading = false.obs;

  Future<void> signin({required String email, required String password}) async {
    isLoading.value = true;

    final response = await http.post(
      Uri.parse('https://getten.citycloudschool.co.ke/api_docs/apis/login.php'),
      body: {
        "email": email,
        "password": password,
      },
    );

    final responseData = jsonDecode(response.body);
    print(responseData);
    if (response.statusCode == 200) {
      print(responseData['code']);
      if (responseData['code'] == 200) {
        Get.snackbar('Success', 'Login successful');
      } else {
        Get.snackbar('Error', 'Email or password incorrect');
      }
      print('object');
    }
    isLoading.value = false;
  }
}
