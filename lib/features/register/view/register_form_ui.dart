part of 'register_page.dart';

class RegisterFormUI extends StatefulWidget with Validator {
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
                                  validator: widget.validateEmail,
                                  onChanged: (value) => setState(() {
                                    strMerchantEmail = value;
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
                                  validator: widget.validatePassword,
                                  onChanged: (value) => setState(() {
                                    strMerchantPassword = value;
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
                                  validator: (value) =>
                                      widget.validateConfirmPassword(
                                        value,
                                        strMerchantPassword!,
                                      ),
                                  onChanged: (value) => setState(() {
                                    strMerchantRePassword = value;
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
                                  validator: widget.validateName,
                                  onChanged: (value) => setState(() {
                                    strMerchantName = value;
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
                                  validator: widget.validatePhone,
                                  onChanged: (value) => setState(() {
                                    strMerchantPhone = value;
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
                        AppSpacing.verticalSpacing20,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: MaterialButton(
                            color: !merchantEmailInteracts() ||
                                !merchantPasswordInteracts() ||
                                !merchantRePasswordInteracts() ||
                                !merchantNameInteracts() ||
                                !merchantPhoneInteracts() ||
                                _formKey.currentState == null ||
                                !_formKey.currentState!.validate()
                                ? CustomColors.disabledBoldColor
                                : CustomColors.mainColor,
                            onPressed: () {
                              !merchantEmailInteracts() ||
                                  !merchantPasswordInteracts() ||
                                  !merchantRePasswordInteracts() ||
                                  !merchantNameInteracts() ||
                                  !merchantPhoneInteracts() ||
                                  _formKey.currentState == null ||
                                  !_formKey.currentState!.validate()
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
                                color: Colors.white,
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
        )
    );
  }
}