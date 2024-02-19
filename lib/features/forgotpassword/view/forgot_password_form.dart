part of 'forgot_password_page.dart';

class ForgotPasswordForm extends StatefulWidget {
  ForgotPasswordForm({super.key});

  @override
  ForgotPasswordFormState createState() => ForgotPasswordFormState();
}

class ForgotPasswordFormState extends State<ForgotPasswordForm> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ForgotPasswordFormUI(),
    );
  }
}