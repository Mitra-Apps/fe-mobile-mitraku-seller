part of 'register_page.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {

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
        borderRadius: BorderRadius.circular(25.0),
        color: CustomColors.successColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset("assets/icons/icon_white_close.svg"),
          SizedBox(
            width: 12.0,
          ),
          Text(message, style: const TextStyle(fontSize: 12,
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

  _showToastFailed(String message) {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: CustomColors.dangerColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset("assets/icons/icon_white_close.svg"),
          SizedBox(
            width: 12.0,
          ),
          Text(message, style: const TextStyle(fontSize: 12,
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
      child: BlocConsumer<RegisterBloc, RegisterState>(
        listenWhen: (prev, next) => prev.notification != next.notification,
        listener: (context, state) {
          state.notification?.when(
            notifySuccess: (message) {
              _showToastSuccess(message);
            },
            notifyFailed: (message) {
              _showToastFailed(message);
            },
          );
        },
        builder: (context, state) {
          return Stack(
            alignment: Alignment.center,
            children: [
              state.status.when<Widget>(
                initial: () {
                  return RegisterFormUI();
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
                  return LoadedWidget(state.registerResponse.otp);
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

// it would be replace with OTP page in another ticket
class LoadedWidget extends StatelessWidget {
  final String data;

  LoadedWidget(this.data);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('Loaded Data:'),
        const SizedBox(height: 8),
        Text('Name: ${data}'),
        Text('Age: ${data}'),
        // Add more widgets to display other properties of the data
      ],
    );
  }
}