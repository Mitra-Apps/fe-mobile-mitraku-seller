part of 'register_page.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final TextEditingController merchantName = TextEditingController();
  final TextEditingController merchantPassword = TextEditingController();
  final TextEditingController merchantAddress = TextEditingController();
  final TextEditingController merchantEmail = TextEditingController();
  final TextEditingController merchantPhone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        child: BlocConsumer<RegisterBloc, RegisterState>(
          listenWhen: (prev, next) => prev.notification != next.notification,
          listener: (context, state) {
            state.notification?.when(
              notifySuccess: (message) {
                Flushbar(
                  message: message,
                  duration: const Duration(seconds: 1),
                  backgroundColor: Colors.green,
                ).show(context);
              },
              notifyFailed: (message) {
                Flushbar(
                  message: message,
                  duration: const Duration(seconds: 1),
                  backgroundColor: Colors.red,
                ).show(context);
              },
            );
          },
          buildWhen: (prev, next) =>
          prev.status != next.status || prev.isBusy != next.isBusy,
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FadeInUp(
                    duration: Duration(milliseconds: 1400),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 10,
                                    offset: Offset(0, 5))
                              ]),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(color: Colors.grey.shade200))),
                                child: TextField(
                                  keyboardType: TextInputType.name,
                                  textInputAction: TextInputAction.next,
                                  cursorColor: Colors.purple,
                                  controller: merchantName,
                                  decoration: InputDecoration(
                                      hintText: "Merchant Name *",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none,
                                      icon: Icon(Icons.person),
                                      iconColor: Colors.purple),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(color: Colors.grey.shade200))),
                                child: TextField(
                                  keyboardType: TextInputType.visiblePassword,
                                  textInputAction: TextInputAction.next,
                                  controller: merchantPassword,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      hintText: "Password *",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none,
                                      icon: Icon(Icons.lock),
                                      iconColor: Colors.purple),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(color: Colors.grey.shade200))),
                                child: TextField(
                                  keyboardType: TextInputType.streetAddress,
                                  textInputAction: TextInputAction.next,
                                  controller: merchantAddress,
                                  decoration: InputDecoration(
                                      hintText: "Address *",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none,
                                      icon: Icon(Icons.location_city),
                                      iconColor: Colors.purple),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(color: Colors.grey.shade200))),
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  textInputAction: TextInputAction.next,
                                  controller: merchantEmail,
                                  decoration: InputDecoration(
                                      hintText: "Email Adress *",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none,
                                      icon: Icon(Icons.email),
                                      iconColor: Colors.purple),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(color: Colors.grey.shade200))),
                                child: TextField(
                                  keyboardType: TextInputType.phone,
                                  textInputAction: TextInputAction.next,
                                  controller: merchantPhone,
                                  decoration: InputDecoration(
                                      hintText: "Phone Number *",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none,
                                      icon: Icon(Icons.phone),
                                      iconColor: Colors.purple),
                                ),
                              ),
                            ],
                          ),
                        ),
                        AppSpacing.verticalSpacing20,
                        Padding(padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15), child: MaterialButton(
                          color: Colors.purple,
                          onPressed: () {
                            BlocProvider.of<RegisterBloc>(context)
                                .add(RegisterEvent.registerRequested(RegisterPost(
                                email: merchantEmail.text,
                                password: merchantPassword.text,
                                name: merchantName.text,
                                phone_number: merchantPhone.text,
                                address: merchantAddress.text,
                                role_id: '10')));
                          },
                          child: const Text(
                            "Register", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.white),
                          ),
                        ),),
                        AppSpacing.verticalSpacing6,
                        Text(
                          'Or',
                          style: TextStyle(fontSize: 10, color: Colors.grey, fontWeight: FontWeight.w700),
                        ),
                        AppSpacing.verticalSpacing6,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Have an account?', style: TextStyle(fontSize: 12, color: Colors.grey),),
                            GestureDetector(
                              onTap: () {
                                context.push(AppRouter.loginPath);
                              },
                              child: Text(
                                ' Login',
                                style: TextStyle(fontSize: 12.0, color: Colors.purple, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                ),
              ],
            );
          },
        )
    );
  }
}