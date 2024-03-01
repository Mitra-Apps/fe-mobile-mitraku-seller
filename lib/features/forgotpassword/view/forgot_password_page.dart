import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:mitraku_seller/core/colors/colors.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/features/forgotpassword/bloc/forgot_password_bloc.dart';
import 'package:mitraku_seller/injector/injector.dart';
import 'package:mitraku_seller/router/app_router.dart';
import 'package:mitraku_seller/utils/newvalidator.dart';
import 'package:mitraku_seller/widgets/error_page.dart';
import 'package:rest_client/rest_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'forgot_password_form.dart';
part 'forgot_password_form_ui.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ForgotPasswordBloc>(
        create: (context) => Injector.instance<ForgotPasswordBloc>(),
        child: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: ForgotPasswordForm(),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
