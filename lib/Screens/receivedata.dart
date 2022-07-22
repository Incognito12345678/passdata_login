import 'package:flutter/material.dart';


class ReceiveData extends StatelessWidget {
   final String email;
  final String password;
  

  ReceiveData({Key? key, required this.email, required this.password}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Receive Data'),
      ),
      body: Center(
        
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Email: $email'),
            Text('Password: $password'),
          ],)
      ),
    );
  }
}
