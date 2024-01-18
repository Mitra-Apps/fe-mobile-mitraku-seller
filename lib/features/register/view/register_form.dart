part of 'register_page.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocConsumer<RegisterBloc, RegisterState>(
        listenWhen: (prev, next) => prev.notification != next.notification,
        listener: (context, state) {
          state.notification?.when(
            notifySuccess: (message) {
              Flushbar(
                message: message,
                duration: const Duration(seconds: 3),
                backgroundColor: CustomColors.successColor,
              ).show(context);
            },
            notifyFailed: (message) {
              Flushbar(
                message: message,
                duration: const Duration(seconds: 5),
                backgroundColor: CustomColors.dangerColor,
              ).show(context);
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
                  return const LoadingPage();
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
              if (state.isBusy) const LoadingPage(),
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
        Text('Loaded Data:'),
        SizedBox(height: 8),
        Text('Name: ${data}'),
        Text('Age: ${data}'),
        // Add more widgets to display other properties of the data
      ],
    );
  }
}