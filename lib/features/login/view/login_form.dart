part of 'login_page.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
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

  _alertForgotPassword() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 200, horizontal: 40),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/icons/icon_forgot_pass_login.svg"),
              const Text('Sandi Salah', style: TextStyle(fontSize: 14,
                fontWeight: FontWeight.w700, fontFamily: 'Poppins',
                color: CustomColors.dangerColor),
              ),
              const Text('sandi gagal 3x, mohon untuk ganti\nsandi',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal,
                  fontFamily: 'Poppins',
                  color: CustomColors.disabledBoldColor,),
                textAlign: TextAlign.center,
              ),
              AppSpacing.verticalSpacing10,
              ElevatedButton(onPressed: () => {
                context.push(AppRouter.forgotPassPath),
              }, style:  ElevatedButton.styleFrom(
                  backgroundColor: CustomColors.mainColor,),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                    child: Text('Lupa Sandi', style:
                    TextStyle(fontSize: 12, fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins', color: Colors.white,),),
                  ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocConsumer<LoginBloc, LoginState>(
          listenWhen: (prev, next) => prev.notification != next.notification,
          listener: (context, state) async {
            state.notification?.when(
              notifySuccess: (message) {
                _showToastSuccess(message);
              },
              notifyFailed: (message) {
                
                switch(state.loginBadRequest) {
                  case 'AUTH_LOGIN_NOT_FOUND':
                    _showToastFailed(message);
                  case 'AUTH_LOGIN_PASSWORD_INCORRECT':
                    _showToastFailed(message);
                  case 'AUTH_LOGIN_PASSWORD_INCORRECT_3X':
                    _alertForgotPassword();
                  default:
                    _showToastFailed(message);
                }
              },
            );

            if (state.loginBadRequest == 'AUTH_LOGIN_USER_UNVERIFIED') {
              await context.push(AppRouter.otpPath);
            }

            if (state.loginSuccess == 'SUCCESSLOGIN') {
              await context.push(AppRouter.homePath);

              final prefs = await SharedPreferences.getInstance();
              await prefs.setString('access_token',
                  state.loginResponse.data.access_token,);
              await prefs.setString('refresh_token',
                  state.loginResponse.data.refresh_token,);
            }
          },
          builder: (context, state) {
            return Stack(
              alignment: Alignment.center,
              children: [
                state.status.when(
                  initial: () {
                    return LoginFormUI();
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
          },),
    );
  }
}
