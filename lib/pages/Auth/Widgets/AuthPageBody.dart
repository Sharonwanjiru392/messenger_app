import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:messenger_app/pages/Auth/Widgets/LoginForm.dart';
import 'package:messenger_app/pages/Auth/Widgets/SignupForm.dart';

class Authpagebody extends StatelessWidget {
  const Authpagebody({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isLogin = true.obs;

    return Center(
      child: Container(
        // width: 400, // Or MediaQuery.sizeOf(context).width * 0.8
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => isLogin.value = true,
                    child: SizedBox(
                      width: 150,
                      child: Column(
                        children: [
                          Text(
                            "Login",
                            style: isLogin.value
                                ? Theme.of(context).textTheme.bodyLarge
                                : Theme.of(context).textTheme.labelLarge,
                          ),
                          const SizedBox(height: 5),
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            width: isLogin.value ? 100 : 0,
                            height: 3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => isLogin.value = false,
                    child: SizedBox(
                      width: 150,
                      child: Column(
                        children: [
                          Text(
                            "Signup",
                            style: isLogin.value
                                ? Theme.of(context).textTheme.labelLarge
                                : Theme.of(context).textTheme.bodyLarge,
                          ),
                          const SizedBox(height: 5),
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            width: isLogin.value ? 0 : 100,
                            height: 3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Obx(
              () => isLogin.value ? const Loginform() : const Signupform(),
            ),
          ],
        ),
      ),
    );
  }
}
