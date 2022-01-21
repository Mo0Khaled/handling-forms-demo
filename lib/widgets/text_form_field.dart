import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DefaultTextField extends StatelessWidget {
  final String title;
  final String? errorText;

  final String? hintText;
  final bool? obscureText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String? Function(String? value)? onSave;

  final VoidCallback? suffixIconPress;

  const DefaultTextField({
    Key? key,
    required this.title,
    this.hintText,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixIconPress,
    this.onSave,
    this.errorText,
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
          child: TextFormField(
            obscuringCharacter: "*",
            cursorColor: const Color(0xFFE6E6FA),
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                errorMaxLines: 2,
                isDense: true,
                errorText: errorText,
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
                hintStyle: const TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
                prefixIcon: Icon(prefixIcon),
                suffixIcon: Icon(suffixIcon)),
            obscureText: obscureText!,
            onSaved: onSave == null ? null : (v) => onSave!(v),
          ),
        ),
      ],
    );
  }
}
