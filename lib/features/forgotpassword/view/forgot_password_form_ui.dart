part of 'forgot_password_page.dart';

class ForgotPasswordFormUI extends StatefulWidget {
  ForgotPasswordFormUI({super.key, this.resetForm});
  bool? resetForm;

  @override
  ForgotPasswordFormUIState createState() => ForgotPasswordFormUIState();
}

class ForgotPasswordFormUIState extends State<ForgotPasswordFormUI> {

  final _formKey = GlobalKey<FormState>();

  String? strMerchantEmail;
  String? strMerchantPassword;
  String? strKodeOTP;

  bool merchantEmailInteracts() => strMerchantEmail != null;
  bool merchantPasswordInteracts() => strMerchantPassword != null;
  bool merchantKodeOTPInteracts() => strKodeOTP != null;
  bool isShowEmailError = false;
  bool isShowPasswordError = false;
  bool isShowOTPError = false;
  var _isLoading = false;

  Future<void> _onReqOTP() async {
    if (!context.mounted) return;

    context.read<ForgotPasswordBloc>().add(ForgotPasswordEvent.reqOtp(
        ResendOTPPost(email: strMerchantEmail!),
    ),);

    if (widget.resetForm!) {
      _formKey.currentState!.reset();
    }
  }

  Future<void> _onSubmit() async {
    setState(() => _isLoading = true);
    Future.delayed(
      const Duration(seconds: 3),
          () => setState(() => _isLoading = false),
    );

    if (!context.mounted) return;

    context.read<ForgotPasswordBloc>().add(ForgotPasswordEvent.forgotPassRequested(
      ForgotPasswordPost(
        email: strMerchantEmail!,
        password: strMerchantPassword!,
        otp_code: int.parse(strKodeOTP!),),
    ),);

    _formKey.currentState!.reset();
  }

  @override
  Widget build(BuildContext context) {
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
                        'Lupa Sandi',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      AppSpacing.verticalSpacing8,
                      const Text(
                        'Mitraku',
                        style: TextStyle(
                          fontSize: 14,
                          color: CustomColors.mainColor,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      AppSpacing.verticalSpacing20,
                      Row(
                        children: [
                          const Icon(
                            Icons.email,
                            color: Colors.black,
                            size: 24,
                          ),
                          AppSpacing.horizontalSpacing10,
                          Flexible(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              decoration: BoxDecoration(
                                color: CustomColors.disabledLightColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.next,
                                onChanged: (value) => setState(() {
                                  strMerchantEmail = value;
                                  isShowEmailError =
                                      isShowValidateEmail(strMerchantEmail);
                                }),
                                decoration: const InputDecoration(
                                  hintText: 'Masukkan Email',
                                  hintStyle: TextStyle(
                                    color: CustomColors.disabledBoldColor,
                                    fontSize: 13,
                                    fontFamily: 'Poppins',
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Visibility(
                              visible: isShowEmailError,
                              child: Text(
                                validateEmail(strMerchantEmail),
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    color: CustomColors.dangerColor,),
                              ),),
                        ],
                      ),
                      AppSpacing.verticalSpacing24,
                      Row(
                        children: [
                          const Icon(
                            Icons.lock,
                            color: Colors.black,
                            size: 24,
                          ),
                          AppSpacing.horizontalSpacing10,
                          Flexible(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              decoration: BoxDecoration(
                                color: CustomColors.disabledLightColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextFormField(
                                keyboardType: TextInputType.visiblePassword,
                                textInputAction: TextInputAction.next,
                                obscureText: true,
                                onChanged: (value) => setState(() {
                                  strMerchantPassword = value;
                                  isShowPasswordError =
                                      isShowValidatePasswordLogin(
                                          strMerchantPassword,);
                                }),
                                decoration: const InputDecoration(
                                  hintText: 'Sandi Baru',
                                  hintStyle: TextStyle(
                                    color: CustomColors.disabledBoldColor,
                                    fontSize: 13,
                                    fontFamily: 'Poppins',
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Visibility(
                                visible: isShowPasswordError,
                                child: Text(
                                  validatePasswordLogin(strMerchantPassword),
                                  softWrap: true,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: CustomColors.dangerColor,),
                                ),),
                          ),
                        ],
                      ),
                      AppSpacing.verticalSpacing24,
                      Row(
                        children: [
                          const Icon(
                            Icons.qr_code_2,
                            color: Colors.black,
                            size: 24,
                          ),
                          AppSpacing.horizontalSpacing10,
                          Flexible(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              decoration: BoxDecoration(
                                color: CustomColors.disabledLightColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextFormField(
                                keyboardType: TextInputType.phone,
                                textInputAction: TextInputAction.done,
                                onChanged: (value) => setState(() {
                                  strKodeOTP = value;
                                  isShowOTPError =
                                      isShowValidateOTP(
                                          strKodeOTP,);
                                }),
                                decoration: const InputDecoration(
                                  hintText: 'Masukkan Kode OTP',
                                  hintStyle: TextStyle(
                                    color: CustomColors.disabledBoldColor,
                                    fontSize: 13,
                                    fontFamily: 'Poppins',
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          AppSpacing.horizontalSpacing10,
                          GestureDetector(
                            onTap: !merchantEmailInteracts() ||
                                !merchantPasswordInteracts() ||
                                isShowEmailError ||
                                isShowPasswordError
                                ? null
                                : _onReqOTP,
                            child: Row(
                              children: [
                                !merchantEmailInteracts() ||
                                  !merchantPasswordInteracts() ||
                                  isShowEmailError ||
                                  isShowPasswordError
                                  ? SvgPicture.asset("assets/icons/icon_send_disable.svg")
                                  : SvgPicture.asset("assets/icons/icon_send_blue.svg"),
                                AppSpacing.horizontalSpacing4,
                                Text('Kirim OTP', style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w700,
                                    fontFamily: 'Poppins',
                                    color: !merchantEmailInteracts() ||
                                        !merchantPasswordInteracts() ||
                                        isShowEmailError ||
                                        isShowPasswordError ||
                                        _isLoading
                                        ? CustomColors.disabledBoldColor
                                        : CustomColors.mainColor,),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Visibility(
                                visible: isShowOTPError,
                                child: Text(
                                  validateOTP(strKodeOTP),
                                  softWrap: true,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: CustomColors.dangerColor,),
                                ),),
                          ),
                        ],
                      ),
                      AppSpacing.verticalSpacing20,
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: ElevatedButton.icon(
                            onPressed: !merchantEmailInteracts() ||
                                !merchantPasswordInteracts() ||
                                !merchantKodeOTPInteracts() ||
                                isShowEmailError ||
                                isShowPasswordError ||
                                isShowOTPError ||
                                _isLoading
                                ? null
                                : _onSubmit
                            ,
                            style: ElevatedButton.styleFrom(padding: const
                            EdgeInsets.symmetric(
                                vertical: 0, horizontal: 16,),
                                backgroundColor: !merchantEmailInteracts() ||
                                    !merchantPasswordInteracts() ||
                                    !merchantKodeOTPInteracts() ||
                                    isShowEmailError ||
                                    isShowPasswordError ||
                                    isShowOTPError
                                    ? CustomColors.disabledBoldColor
                                    : CustomColors.mainColor,),
                            icon: _isLoading ? Container(
                              width: 24,
                              height: 24,
                              padding: const EdgeInsets.all(2.0),
                              child: const CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 3,
                              ),
                            )
                                : Container(),
                            label: const Text('Ubah Sandi', style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),),
                          ),
                      ),
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