import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:messenger_app/Controller/AuthController.dart';
import 'package:messenger_app/Widget/PrimaryButton.dart';

class Loginform extends StatelessWidget {
  const Loginform({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController email = TextEditingController();
    final TextEditingController password = TextEditingController();
    final AuthController authController = Get.put(AuthController());
    final RxBool _obscurePassword = true.obs;

    return Column(
      children: [
        const SizedBox(height: 40),
        TextField(
          controller: email,
          decoration: const InputDecoration(
            hintText: "Email",
            prefixIcon: Icon(Icons.alternate_email_rounded),
          ),
        ),
        const SizedBox(height: 30),
        Obx(() => TextField(
              controller: password,
              obscureText: _obscurePassword.value,
              decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: const Icon(Icons.password_outlined),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword.value
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  onPressed: () {
                    _obscurePassword.value = !_obscurePassword.value;
                  },
                ),
              ),
            )),
        const SizedBox(height: 10),
        Row(
          children: [
            InkWell(
              onTap: () {
                // Get.to(ForgotPassword());
              },
              child: Text(
                "Forgot Password ?",
                style: TextStyle(
                  fontSize: 13,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 60),
        Obx(
          () => authController.isLoading.value
              ? const CircularProgressIndicator()
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PrimaryButton(
                      ontap: () {
                        authController.login(
                          email.text.trim(),
                          password.text.trim(),
                        );
                      },
                      btnName: "LOGIN",
                      icon: Icons.lock_open_outlined,
                    ),
                  ],
                ),
        ),
      ],
    );
  }
}
