import 'package:bankak_app/shared/components/form_fields/text_field.dart';
import 'package:bankak_app/shared/resources/icons.dart';
import 'package:flutter/material.dart';

class EmailInputField extends StatelessWidget {
  const EmailInputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputTextField(
      keyboardType: TextInputType.emailAddress,
      hint: "Email Address",
      prefix: Icon(email),
    );
  }
}
