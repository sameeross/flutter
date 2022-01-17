import 'package:flutter/material.dart';
import 'utils/routes.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset("assets/images/sk.jpg", fit: BoxFit.cover),
          const Text(
            'Welcome to Sameer\'s app',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
          ),
          const SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 35),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'enter username',
                    labelText: 'Username',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'enter password',
                    labelText: 'Password',
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 40),
                // ignore: prefer_const_constructors
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Myroutes.homeroute);
                  },
                  style: TextButton.styleFrom(
                    minimumSize: Size(150, 50),
                    backgroundColor: Colors.black,
                  ),
                  child: const Text('login'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
