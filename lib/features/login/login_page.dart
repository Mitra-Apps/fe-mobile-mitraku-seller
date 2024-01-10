import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/features/login/components/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          exit(0);
        },
        child: const Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Merchant Login',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                AppSpacing.verticalSpacing20,
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                    child: LoginForm()),
              ],
            ),
          ),
        ));
  }
}
