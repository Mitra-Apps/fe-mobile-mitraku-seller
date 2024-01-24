import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mitraku_seller/core/colors/colors.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:animate_do/animate_do.dart';
import 'package:go_router/go_router.dart';
import 'package:mitraku_seller/features/register/bloc/register_bloc.dart';
import 'package:mitraku_seller/injector/injector.dart';
import 'package:mitraku_seller/router/app_router.dart';
import 'package:mitraku_seller/utils/newvalidator.dart';
import 'package:mitraku_seller/widgets/error_page.dart';
import 'package:mitraku_seller/widgets/loading_page.dart';
import 'package:rest_client/rest_client.dart';

part 'register_form.dart';
part 'register_form_ui.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegisterBloc>(
      create: (context) => Injector.instance<RegisterBloc>(),
      child: const Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding:
                EdgeInsets.symmetric(horizontal: 20), child: RegisterForm(),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
