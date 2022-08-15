import 'package:bankak_app/shared/components/form_fields/text_field.dart';
import 'package:bankak_app/shared/resources/icons.dart';
import 'package:flutter/material.dart';

class PasswordInputField extends StatefulWidget {
  const PasswordInputField({Key? key}) : super(key: key);

  @override
  State<PasswordInputField> createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return InputTextField(
      secure: hidePassword,
      keyboardType: TextInputType.visiblePassword,
      hint: "Password",
      suffix: IconButton(
        icon: Icon(eye),
        onPressed: () {
          setState(() {
            hidePassword = !hidePassword;
          });
        },
      ),
      prefix: Icon(lock),
    );
  }
}
