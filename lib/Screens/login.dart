import 'package:flutter/material.dart';
import 'package:loginstatefullwidget/Screens/receivedata.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller1 = TextEditingController();
    TextEditingController controller2 = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
                controller: controller1,
                decoration: const InputDecoration(
                  hintText: "Enter your Name",
                  labelText: "Name",
                  border: OutlineInputBorder(),
                )),
            TextField(
              controller: controller2,
              decoration: const InputDecoration(
                hintText: "Enter your password",
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text('Login'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Warning'),
                      content: const Text('La informacion es correcta?.'),
                      actions: <Widget>[
                        ElevatedButton(
                          child: const Text('Si'),
                          onPressed: () {
                            Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReceiveData(
                      email: controller1.text,
                      password: controller2.text,
                    ),
                  ),
                );
                          },
                        ),
                        ElevatedButton(
                          child: const Text('No'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );

                
              },
            ),
          ],
        ),
      ),
    );
  }
}
