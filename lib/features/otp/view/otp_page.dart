import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:mitraku_seller/core/colors/colors.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/features/otp/bloc/otp_confirmation_bloc.dart';
import 'package:mitraku_seller/injector/injector.dart';
import 'package:mitraku_seller/router/app_router.dart';
import 'package:mitraku_seller/widgets/error_page.dart';
import 'package:pinput/pinput.dart';
import 'package:rest_client/rest_client.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timer_count_down/timer_count_down.dart';

part 'otp_form.dart';
part 'otp_form_ui.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({super.key});

  @override
  OTPPageState createState() => OTPPageState();
}

class OTPPageState extends State<OTPPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<OtpConfirmationBloc>
      (create: (context) => Injector.instance<OtpConfirmationBloc>(),
        child:const Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: OTPForm(),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
