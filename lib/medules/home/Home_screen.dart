// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          'Frist App',
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.add_alert_rounded,
            ),
            onPressed: () {
              print('add alert was tabbed');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.bluetooth_drive_rounded,
            ),
            onPressed: () {
              print('bluetooth_drive_rounded was tabbed');
            },
          ),

        ],
      ),
      body:
      Stack(
        children: [
          Image(image: NetworkImage(
              'https://res.klook.com/images/fl_lossy.progressive,q_65/c_fill,w_1295,h_720/w_80,x_15,y_15,g_south_west,l_klook_water/activities/t9ur9cc1khkup1dmcbzd/IMGWorldsofAdventure.webp'
          ),
          ),
          Container(
            width: double.infinity,
            color: Colors.white,

            child: Text(
            'Wormy',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.green,
                fontSize: 30.0,
              ),

            ),
          ),
        ],
      ),
    );




  }

}