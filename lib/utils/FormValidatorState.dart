part of 'FormValidatorCubit.dart';

@immutable
abstract class FormValidatorState {
  final AutovalidateMode autovalidateMode;
  final String email;
  final String password;
  final String confirmPassword;
  final String name;
  final String phone;
  final bool obscureText;

  const FormValidatorState({
    this.autovalidateMode = AutovalidateMode.disabled,
    this.email = '',
    this.password = '',
    this.confirmPassword = '',
    this.name = '',
    this.phone = '',
    this.obscureText = true,
  });

  FormValidatorState copyWith({
    AutovalidateMode? autovalidateMode,
    String? email,
    String? password,
    String? confirmPassword,
    String? name,
    String? phone,
    bool? obscureText,
  });
}

class FormValidatorUpdate extends FormValidatorState {

  const FormValidatorUpdate({
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled,
    String email = '',
    String password = '',
    String confirmPassword = '',
    String name = '',
    String phone = '',
    bool obscureText = true,
  }) : super(
    autovalidateMode: autovalidateMode,
    email: email,
    password: password,
    confirmPassword: confirmPassword,
    name: name,
    phone: phone,
    obscureText: obscureText,
  );

  @override
  FormValidatorUpdate copyWith({
    AutovalidateMode? autovalidateMode,
    String? email,
    String? password,
    String? confirmPassword,
    String? name,
    String? phone,
    bool? obscureText,
  }) {
    return FormValidatorUpdate(
      autovalidateMode: autovalidateMode ?? this.autovalidateMode,
      email: email ?? this.email,
      password: password ?? this.password,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      obscureText: obscureText ?? this.obscureText,
    );
  }
}