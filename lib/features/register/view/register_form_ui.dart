part of 'register_page.dart';

class RegisterFormUI extends StatefulWidget {
  RegisterFormUI({super.key});

  @override
  RegisterFormUIState createState() => RegisterFormUIState();
}

class RegisterFormUIState extends State<RegisterFormUI> {
  final _formKey = GlobalKey<FormState>();

  String? strMerchantEmail;
  String? strMerchantPassword;
  String? strMerchantRePassword;
  String? strMerchantName;
  String? strMerchantPhone;

  bool merchantEmailInteracts() => strMerchantEmail != null;
  bool merchantPasswordInteracts() => strMerchantPassword != null;
  bool merchantRePasswordInteracts() => strMerchantRePassword != null;
  bool merchantNameInteracts() => strMerchantName != null;
  bool merchantPhoneInteracts() => strMerchantPhone != null;
  bool isShowEmailError = false;
  bool isShowPasswordError = false;
  bool isShowRePasswordError = false;
  bool isShowNameError = false;
  bool isShowPhoneError = false;

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
                        const Text(
                          'Daftar Akun',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
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
                                    hintText: 'cth: admin@gmail.com',
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
                            AppSpacing.horizontalSpacing32,
                            Visibility(
                                visible: isShowEmailError,
                                child: Text(
                                  validateEmail(strMerchantEmail),
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: CustomColors.dangerColor),
                                )
                            ),
                          ],
                        ),
                        AppSpacing.verticalSpacing16,
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
                                        isShowValidatePassword(strMerchantPassword);
                                  }),
                                  decoration: const InputDecoration(
                                    hintText: 'cth: secR123**',
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
                            AppSpacing.horizontalSpacing32,
                            Visibility(
                                visible: isShowPasswordError,
                                child: Text(
                                  validatePassword(strMerchantPassword),
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: CustomColors.dangerColor),
                                )
                            ),
                          ],
                        ),
                        AppSpacing.verticalSpacing16,
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  color: CustomColors.disabledLightColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: TextFormField(
                                  keyboardType: TextInputType.visiblePassword,
                                  textInputAction: TextInputAction.next,
                                  obscureText: true,
                                  onChanged: (value) => setState(() {
                                    strMerchantRePassword = value;
                                    isShowRePasswordError =
                                        isShowValidateConfirmPassword(
                                            strMerchantRePassword,
                                            strMerchantPassword);
                                  }),
                                  decoration: const InputDecoration(
                                    hintText: 'Konfirmasi Password',
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
                            AppSpacing.horizontalSpacing32,
                            Visibility(
                                visible: isShowRePasswordError,
                                child: Text(
                                  validateConfirmPassword(
                                      strMerchantRePassword,
                                      strMerchantPassword),
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: CustomColors.dangerColor),
                                )
                            ),
                          ],
                        ),
                        AppSpacing.verticalSpacing16,
                        Row(
                          children: [
                            const Icon(
                              Icons.person,
                              color: Colors.black,
                              size: 24,
                            ),
                            AppSpacing.horizontalSpacing10,
                            Flexible(
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  color: CustomColors.disabledLightColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: TextFormField(
                                  keyboardType: TextInputType.name,
                                  textInputAction: TextInputAction.next,
                                  cursorColor: Colors.purple,
                                  onChanged: (value) => setState(() {
                                    strMerchantName = value;
                                    isShowNameError = isShowValidateName(strMerchantName);
                                  }),
                                  decoration: const InputDecoration(
                                    hintText: 'cth: admin kita *',
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
                            AppSpacing.horizontalSpacing32,
                            Visibility(
                                visible: isShowNameError,
                                child: Text(
                                  validateName(
                                      strMerchantName),
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: CustomColors.dangerColor),
                                )
                            ),
                          ],
                        ),
                        AppSpacing.verticalSpacing16,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.phone,
                              color: Colors.black,
                              size: 24,
                            ),
                            AppSpacing.horizontalSpacing10,
                            Flexible(
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  color: CustomColors.disabledLightColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: TextFormField(
                                  keyboardType: TextInputType.phone,
                                  textInputAction: TextInputAction.next,
                                  onChanged: (value) => setState(() {
                                    strMerchantPhone = value;
                                    isShowPhoneError = isShowValidatePhone(strMerchantPhone);
                                  }),
                                  decoration: const InputDecoration(
                                    hintText: 'cth: +62-8000000',
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
                            AppSpacing.horizontalSpacing32,
                            Visibility(
                                visible: isShowPhoneError,
                                child: Text(
                                  validatePhone(
                                      strMerchantPhone),
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: CustomColors.dangerColor),
                                )
                            ),
                          ],
                        ),
                        AppSpacing.verticalSpacing20,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: MaterialButton(
                            color: !merchantEmailInteracts() ||
                                !merchantPasswordInteracts() ||
                                !merchantRePasswordInteracts() ||
                                !merchantNameInteracts() ||
                                !merchantPhoneInteracts() ||
                                isShowEmailError ||
                                isShowPasswordError ||
                                isShowRePasswordError ||
                                isShowNameError ||
                                isShowPhoneError
                                ? CustomColors.disabledBoldColor
                                : CustomColors.mainColor,
                            onPressed: () {
                              !merchantEmailInteracts() ||
                              !merchantPasswordInteracts() ||
                              !merchantRePasswordInteracts() ||
                              !merchantNameInteracts() ||
                              !merchantPhoneInteracts() ||
                              isShowEmailError ||
                              isShowPasswordError ||
                              isShowRePasswordError ||
                              isShowNameError ||
                              isShowPhoneError
                              ? null
                              : context
                                  .read<RegisterBloc>()
                                  .add(RegisterEvent.registerRequested(
                                    RegisterPost(
                                      email: strMerchantEmail!,
                                      password: strMerchantPassword!,
                                      name: strMerchantName!,
                                      phone_number: strMerchantPhone!,
                                      role_id: ['1', '2'],
                                    ),
                                  ));
                            },
                            child: const Text(
                              'Daftarkan',
                              style: TextStyle(
                                fontSize: 12,
                                color: CustomColors.whiteColor,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        ),
                        AppSpacing.verticalSpacing6,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Sudah Punya Akun?',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                context.push(AppRouter.loginPath);
                              },
                              child: const Text(
                                ' Masuk',
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
                        AppSpacing.verticalSpacing32,
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
