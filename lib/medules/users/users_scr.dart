import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemy_flutter/models/users/users.dart';


class UserScreen extends StatelessWidget {

  List <UserItemModel> users = [
    UserItemModel(id: 1,name: 'Tyson',phone: '+971544373241'),
    UserItemModel(phone: '+97112345678',name: 'Yousef Mahrous',id: 2),
    UserItemModel(id: 3,name: 'koko sodoko',phone: '+9718765432'),
    UserItemModel(phone: '+97145678',name: 'selvia alpa',id: 4),
    UserItemModel(id: 1,name: 'Tyson',phone: '+971544373241'),
    UserItemModel(phone: '+97112345678',name: 'Yousef Mahrous',id: 2),
    UserItemModel(id: 3,name: 'koko sodoko',phone: '+9718765432'),
    UserItemModel(phone: '+97145678',name: 'selvia alpa',id: 4),
    UserItemModel(id: 1,name: 'Tyson',phone: '+971544373241'),
    UserItemModel(phone: '+97112345678',name: 'Yousef Mahrous',id: 2),
    UserItemModel(id: 3,name: 'koko sodoko',phone: '+9718765432'),
    UserItemModel(phone: '+97145678',name: 'selvia alpa',id: 4),
    UserItemModel(id: 1,name: 'Tyson',phone: '+971544373241'),
    UserItemModel(phone: '+97112345678',name: 'Yousef Mahrous',id: 2),
    UserItemModel(id: 3,name: 'koko sodoko',phone: '+9718765432'),
    UserItemModel(phone: '+97145678',name: 'selvia alpa',id: 4),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'User',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context,index) =>userItem(users[index]) ,
        separatorBuilder: (context,index) => Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 15.0,
            end: 15.0,
          ),
          child: Container(
            height: 5.0,
            color: Colors.blueGrey,
          ),
        ),
        itemCount: users.length,
      ),
    );
  }

  Widget userItem(UserItemModel user) => Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.blue,
              child: Text(
                '${user.id}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${user.name}',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  '${user.phone}',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
