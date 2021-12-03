import 'package:flutter/material.dart';

Widget defaultTextFormField({
  required Function validate,
  required TextInputType type,
  required String label,
  required IconData prefix,
  IconData? suffix,
  bool isPassword = false,
  Function? suffixPress,
}) =>
    TextFormField(
      validator: (value) {

        return validate(value);
      },
      keyboardType: type,
      obscureText: isPassword,
      decoration: InputDecoration(
        label: Text('$label'),
        prefixIcon: Icon(prefix),
        suffix: suffix !=null ? IconButton(
            icon: Icon(suffix),
          onPressed: suffixPress!() ,
        ) : null ,
        border: OutlineInputBorder(),
      ),
    );
