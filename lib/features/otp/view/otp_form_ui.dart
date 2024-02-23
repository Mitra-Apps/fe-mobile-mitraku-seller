part of 'otp_page.dart';

class OTPFormUI extends StatefulWidget {
  OTPFormUI({super.key});

  @override
  OTPFormUIState createState() => OTPFormUIState();
}

class OTPFormUIState extends State<OTPFormUI> {
  final _formKey = GlobalKey<FormState>();

  String? strOTP;

  bool otpInteracts() => strOTP != null;
  bool isShowOTPError = false;
  bool hideVerifikasiButton = true;
  bool showResendOtpButton = false;
  bool showCountDownTimer = false;
  bool disableResendOtpButton = false;
  var _isLoading = false;
  final pinController = TextEditingController();
  var _countError = 0;

  Future<void> _onSubmit() async {
    setState(() => _isLoading = true);
    Future.delayed(
      const Duration(seconds: 3),
          () => setState(() => _isLoading = false),
    );

    final prefs = await SharedPreferences.getInstance();
    late String email = prefs.getString('email') ?? '';
    late bool otpInvalid = prefs.getBool('otpInvalid') ?? false;

    if (!context.mounted) return;

    context.read<OtpConfirmationBloc>().add(OtpConfirmationEvent.otpRequested(
        OtpConfirmationPost(email: email, otp_code: int.parse(strOTP!))));

    isShowOTPError = otpInvalid;

    if (otpInvalid) {
      _countError += 1;
      pinController.setText('');
      strOTP = null;
    }

    if (_countError % 3 == 0) {
      hideVerifikasiButton = false;
      showResendOtpButton = true;
      strOTP != null;
      await prefs.remove('otpInvalid');
    }

    if (showCountDownTimer) {
      disableResendOtpButton = true;
    }
  }

  Future<void> _onResend() async {
    pinController.setText('');
    strOTP = null;

    final prefs = await SharedPreferences.getInstance();
    late String email = prefs.getString('email') ?? '';

    hideVerifikasiButton = true;
    showResendOtpButton = false;
    showCountDownTimer = true;

    if (!context.mounted) return;

    context.read<OtpConfirmationBloc>().add(OtpConfirmationEvent.resendOtpRequested(
        ResendOTPPost(email: email)
    ));
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
          fontSize: 12, color: Colors.black, fontFamily: 'Poppins'),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(4),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(4),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    return Form(
      key: _formKey,
      child: Column(
        children: [
          FadeInUp(
            duration: const Duration(milliseconds: 1400),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      AppSpacing.verticalSpacing32,
                      GestureDetector(
                        onTap: () {
                          context.push(AppRouter.loginPath);
                        },
                        child: const Row(
                          children: [
                            Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                              size: 24,
                            ),
                            Text(
                              'Kembali',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                      ),
                      AppSpacing.verticalSpacing128,
                      const Text(
                        'Verifikasi OTP',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Visibility(
                                visible: isShowOTPError,
                                child: const Text(
                                  'Kode OTP tidak berlaku',
                                  softWrap: true,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: CustomColors.dangerColor),
                                )),
                          )
                        ],
                      ),
                      AppSpacing.verticalSpacing20,
                      Pinput(
                        length: 4,
                        defaultPinTheme: defaultPinTheme,
                        focusedPinTheme: focusedPinTheme,
                        submittedPinTheme: submittedPinTheme,
                        showCursor: true,
                        onCompleted: (pin) => setState(() {
                          strOTP = pin;
                        }),
                        controller: pinController,
                      ),
                      AppSpacing.verticalSpacing20,
                      Visibility(visible: hideVerifikasiButton ,child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: ElevatedButton.icon(
                            onPressed:
                            !otpInteracts() || _isLoading
                                ? null
                                : _onSubmit,
                            style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 16),
                                backgroundColor: !otpInteracts() ||
                                    _isLoading
                                    ? CustomColors.disabledBoldColor
                                    : CustomColors.mainColor),
                            icon: _isLoading
                                ? Container(
                              width: 24,
                              height: 24,
                              padding: const EdgeInsets.all(2.0),
                              child: const CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 3,
                              ),
                            )
                                : Container(),
                            label: const Text(
                              'Verifikasi',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          )
                      ),),
                      Visibility(visible: showResendOtpButton, child: GestureDetector(
                        onTap: disableResendOtpButton ? null : _onResend,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Kirim Ulang OTP',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  color: disableResendOtpButton ?
                                  CustomColors.disabledBoldColor :
                                  CustomColors.mainColor
                              ),
                            ),
                          ],
                        ),
                      ),),
                      AppSpacing.verticalSpacing20,
                      Visibility(visible: showCountDownTimer, child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Kirim Ulang OTP : ',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                                color: CustomColors.disabledBoldColor
                            ),
                          ),
                          Countdown(
                            seconds: 59,
                            build: (BuildContext context, double time) =>
                                Text('00:${time.toInt()}',
                                  style: const TextStyle(fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins',
                                      color: CustomColors.disabledBoldColor),),
                            interval: const Duration(seconds: 1),
                            onFinished: () {
                              setState(() {
                                showCountDownTimer = false;
                                disableResendOtpButton = false;
                              });
                            },
                          ),
                        ],
                      ),),
                      AppSpacing.verticalSpacing128,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
