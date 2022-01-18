// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'utils/routes.dart';

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  var name = '';
  bool changebutton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
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
                fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
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
                  obscureText: true,
                ),
                const SizedBox(height: 70),
                // ignore: prefer_const_constructors
                // ElevatedButton(
                //   onPressed: () {
                //     Navigator.pushNamed(context, Myroutes.homeroute);
                //   },
                //   style: TextButton.styleFrom(
                //     minimumSize: const Size(150, 50),
                //     backgroundColor: Colors.black,
                //   ),
                //   child: const Text('login'),
                // )
                InkWell(
                  onTap: () async {
                    // Navigator.pushNamed(context, Myroutes.homeroute);
                    setState(() {
                      changebutton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, Myroutes.homeroute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changebutton ? 50 : 160,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        // shape:
                        //     changebutton ? BoxShape.circle : BoxShape.rectangle,
                        borderRadius:
                            BorderRadius.circular(changebutton ? 50 : 8)),
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
