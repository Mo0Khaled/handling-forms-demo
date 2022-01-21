import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DefaultTextField extends StatelessWidget {
  final String title;
  final String? hintText;
  final bool? obscureText;
  final TextEditingController? controller;
  final double? height;
  final TextAlign? textAlign;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String? Function(String value)? validator;
  final String? Function(String? value)? onChange;
  final FocusNode? focusNode;
  final VoidCallback? onPress;
  final VoidCallback? suffixIconPress;
  final int? makLength;
  final TextInputType? textInputType;
  final bool isFieldPassword;

  const DefaultTextField({
    Key? key,
    required this.title,
    this.hintText,
    this.obscureText = false,
    this.controller,
    this.height,
    this.textAlign,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.onChange,
    this.focusNode,
    this.onPress,
    this.makLength,
    this.textInputType,
    this.isFieldPassword = false,
    this.suffixIconPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: height ?? 56,
          child: TextFormField(
            keyboardType: textInputType,
            inputFormatters: [
              LengthLimitingTextInputFormatter(makLength),
            ],
            obscuringCharacter: "*",
            focusNode: focusNode,
            onTap: onPress,
            style: const TextStyle(
              color: Color(0xFFE6E6FA),
            ),
            controller: controller,
            cursorColor: const Color(0xFFE6E6FA),
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(9),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(9),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFFE6E6FA)),
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: hintText,
                hintStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.grey.shade500,
                ),
                prefixIcon: Icon(prefixIcon),
                suffixIcon: Icon(suffixIcon)),
            obscureText: obscureText!,
            validator: (v) => validator!(v!),
            onChanged: onChange == null ? null : (v) => onChange!(v),
            textAlign: textAlign ?? TextAlign.left,
          ),
        ),
      ],
    );
  }
}
