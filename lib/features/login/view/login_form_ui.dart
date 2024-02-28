part of 'login_page.dart';

class LoginFormUI extends StatefulWidget {
  LoginFormUI({super.key});

  @override
  _LoginFormUIState createState() => _LoginFormUIState();
}

class _LoginFormUIState extends State<LoginFormUI> {
  final _formKey = GlobalKey<FormState>();

  String? strMerchantEmail;
  String? strMerchantPassword;

  bool merchantEmailInteracts() => strMerchantEmail != null;
  bool merchantPasswordInteracts() => strMerchantPassword != null;
  bool isShowEmailError = false;
  bool isShowPasswordError = false;
  var _isLoading = false;

  Future<void> _onSubmit() async {
    setState(() => _isLoading = true);
    Future.delayed(
      const Duration(seconds: 3),
      () => setState(() => _isLoading = false),
    );

    context.read<LoginBloc>().add(LoginEvent.loginRequested(
          LoginPost(email: strMerchantEmail!, password: strMerchantPassword!),
        ));

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', strMerchantEmail!);

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
                        AppSpacing.verticalSpacing128,
                        const Text(
                          'Silahkan Masuk',
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
                                    isShowEmailError = isShowValidateEmail(strMerchantEmail);
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
                                  style: const TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: CustomColors.dangerColor),
                                )),
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
                                    isShowPasswordError = isShowValidatePassword(strMerchantPassword);
                                  }),
                                  decoration: const InputDecoration(
                                    hintText: 'Masukkan Sandi',
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
                                    validatePassword(strMerchantPassword),
                                    softWrap: true,
                                    style: const TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: CustomColors.dangerColor),
                                  )),
                            )
                          ],
                        ),
                        AppSpacing.verticalSpacing20,
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: ElevatedButton.icon(
                              // onPressed: !merchantEmailInteracts() ||
                              //     !merchantPasswordInteracts() ||
                              //     isShowEmailError ||
                              //     isShowPasswordError ||
                              //     _isLoading
                              //     ? null
                              //     : _onSubmit
                              // ,
                              onPressed: () => context.push(AppRouter.homePath),
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                                backgroundColor: !merchantEmailInteracts() || !merchantPasswordInteracts() || isShowEmailError || isShowPasswordError ? CustomColors.disabledBoldColor : CustomColors.mainColor,
                              ),
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
                                'Masuk',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            )),
                        AppSpacing.verticalSpacing6,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Anda belum punya akun ?',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                context.push(AppRouter.registerPath);
                              },
                              child: const Text(
                                ' Daftar',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: CustomColors.mainColor,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                          ],
                        ),
                        AppSpacing.verticalSpacing128,
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
