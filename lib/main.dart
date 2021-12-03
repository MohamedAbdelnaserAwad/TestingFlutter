import 'package:flutter/material.dart';
import 'package:udemy_flutter/medules/home/Home_screen.dart';
import 'package:udemy_flutter/medules/login/login.dart';
import 'package:udemy_flutter/medules/massenger/massenger_src.dart';
import 'package:udemy_flutter/medules/users/users_scr.dart';

import 'medules/bmi/bmi_calclator.dart';
import 'medules/bmi_results/bmi_result.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
       debugShowCheckedModeBanner: false,
     home: LoginScreen()
     );
  }

}
