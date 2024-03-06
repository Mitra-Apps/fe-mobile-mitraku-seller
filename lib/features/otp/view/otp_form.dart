part of 'otp_page.dart';

class OTPForm extends StatefulWidget {
  const OTPForm({super.key});

  @override
  OTPFormState createState() => OTPFormState();
}

class OTPFormState extends State<OTPForm> {

  late FToast fToast;
  bool otpInvalid = false;

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
          Text(message, style: const TextStyle(fontSize: 8,
              fontWeight: FontWeight.normal,
              color: CustomColors.whiteColor),),
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
      child: BlocConsumer<OtpConfirmationBloc, OtpConfirmationState>(
          listenWhen: (prev, next) => prev.notification != next.notification,
          listener: (context, state) async {
            state.notification?.when(
              notifySuccess: (message) {
                _showToastSuccess(message);
              },
              notifyFailed: (message) {

              },
            );

            if (state.otpSuccess == 'OTPSUCCESS') {
              final prefs = await SharedPreferences.getInstance();

              await prefs.remove('otpInvalid');
              await prefs.setString('access_token',
                state.loginResponse.data.access_token,);
              await prefs.setString('refresh_token',
                state.loginResponse.data.refresh_token,);

              await context.push(AppRouter.homePath);
            }

            if (state.otpBadRequest == 'AUTH_OTP_INVALID') {
              otpInvalid = true;
              final prefs = await SharedPreferences.getInstance();
              await prefs.setBool('otpInvalid', otpInvalid);
            }
          },
          builder: (context, state) {
            return Stack(
              alignment: Alignment.center,
              children: [
                state.status.when(
                  initial: () {
                    return OTPFormUI();
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
          }
      ),
    );
  }
}