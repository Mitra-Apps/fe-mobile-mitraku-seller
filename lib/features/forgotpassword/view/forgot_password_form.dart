part of 'forgot_password_page.dart';

class ForgotPasswordForm extends StatefulWidget {
  ForgotPasswordForm({super.key});

  @override
  _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  late FToast fToast;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    // if you want to use context from globally instead of content we need to pass navigatorKey.currentContext!
    fToast.init(context);
  }

  _showToastSuccess(String message) {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: CustomColors.successColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset("assets/icons/icon_white_close.svg"),
          const SizedBox(
            width: 12.0,
          ),
          Text(
            message,
            style: const TextStyle(
              fontSize: 8,
              fontWeight: FontWeight.normal,
              color: CustomColors.whiteColor,),
          ),
        ],
      ),
    );

    fToast.showToast(
      child: toast,
      gravity: ToastGravity.TOP,
      toastDuration: const Duration(seconds: 3),
    );
  }

  _showToastFailed(String message) {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: CustomColors.dangerColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset("assets/icons/icon_white_close.svg"),
          const SizedBox(
            width: 12.0,
          ),
          Text(
            message,
            style: const TextStyle(
              fontSize: 8,
              fontWeight: FontWeight.normal,
              color: CustomColors.whiteColor,),
          ),
        ],
      ),
    );

    fToast.showToast(
      child: toast,
      gravity: ToastGravity.TOP,
      toastDuration: const Duration(seconds: 3),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
        listenWhen: (prev, next) => prev.notification != next.notification,
        listener: (context, state) async {
          state.notification?.when(
            notifySuccess: (message) {
              _showToastSuccess(message);
            },
            notifyFailed: (message) {
              if (state.forgotPassBadRequest == 'RECORD_NOT_FOUND') {
                _showToastFailed('Email belum terdaftar, mohon registrasi');
              } else {
                _showToastFailed(message);
              }
            },
          );

          if (state.forgotPassSuccess == 'SUCCESSFORGOT') {
            await context.push(AppRouter.homePath);

            final prefs = await SharedPreferences.getInstance();
            await prefs.setString('access_token',
              state.loginResponse.data.accessToken,);
            await prefs.setString('refresh_token',
              state.loginResponse.data.refreshToken,);
          }
        },
        builder: (context, state) {
          return Stack(
            alignment: Alignment.center,
            children: [
              state.status.when(
                initial: () {
                  return ForgotPasswordFormUI();
                },
                loading: () {
                  return Container();
                },
                loadFailed: (message) {
                  return ErrorPage(
                    content: message,
                  );
                },
                loadSuccess: (message) {
                  return Container();
                },
              ),
              if (state.isBusy) Container(),
            ],
          );
        },
      ),
    );
  }
}