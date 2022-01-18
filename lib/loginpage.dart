// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'utils/routes.dart';

var username = '';

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final _formkey = GlobalKey<FormState>();
  var name = '';
  bool changebutton = false;
  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate() == true) {
      setState(() {
        changebutton = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, Myroutes.homeroute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            // ignore: prefer_const_constructors
            SizedBox(
              height: 70,
            ),
            Image.asset("assets/images/sk.jpg", fit: BoxFit.cover),
            const Text(
              'Welcome to Sameer\'s app',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black),
            ),
            SizedBox(
              width: 200,
              child: Container(
                child: Center(
                  child: Text('$name',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black,
                      )),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 35),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'enter username',
                      labelText: 'Username',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "useranme cannot be empty";
                      }
                      username = value;
                      return null;
                    },
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'enter password',
                      labelText: 'Password',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "password cannot be empty";
                      }
                      return null;
                    },
                    obscureText: true,
                  ),
                  const SizedBox(height: 70),
                  // ignore: prefer_const_constructor
                  Material(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(changebutton ? 50 : 8),
                    child: InkWell(
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changebutton ? 50 : 160,
                        height: 50,
                        alignment: Alignment.center,
                        child: changebutton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
