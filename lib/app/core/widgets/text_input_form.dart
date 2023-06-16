import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextInputForm extends StatelessWidget {
  final String label;
  final IconButton? suffixIconButton;
  final bool obscureText;
  final ValueNotifier<bool> obscureTextVn;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;

  TextInputForm(
      {Key? key,
      required this.label,
      this.obscureText = false,
      this.suffixIconButton,
      this.controller,
      this.validator})
      : assert(obscureText == true ? suffixIconButton == null : true,
            'ObsctureText não pode ser enviado com suffixinIcon'),
        obscureTextVn = ValueNotifier(obscureText),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: obscureTextVn, 
      builder: (_, obscureTextValue, child) {
        return TextFormField(
        style: const TextStyle(color: Colors.black),
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
            labelText: label,
            labelStyle: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w400,
                    fontSize: 14)),
            suffixIcon: suffixIconButton ??
                (obscureText == true
                    ? IconButton(
                        onPressed: () {
                          obscureTextVn.value = !obscureTextValue;
                        },
                        icon: Icon(
                          !obscureTextValue
                              ? Icons.remove_circle
                              : Icons.remove_red_eye,
                          size: 20,
                        ))
                    : null)),
        obscureText: obscureTextValue);
  });
      }
    
}
