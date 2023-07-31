import 'package:coffee_order/constants.dart';
import 'package:coffee_order/pages/menu_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: pageBackgroundColor,
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Image.asset(
                  'assets/icons/cup.png',
                  height: 200,
                  width: 200,
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 50,
              ),
              FractionallySizedBox(
                //responsive olup tüm ekranlarda ekranın yüzde 80ini kapsaması için kullanıldı
                widthFactor: 0.8,
                child: TextFormField(
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    // ignore: prefer_const_constructors
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.brown),
                    ),
                    labelText: 'Enter Your UserName',
                    labelStyle: TextStyle(color: Colors.brown),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              FractionallySizedBox(
                widthFactor: 0.8,
                child: TextFormField(
                  obscuringCharacter: '*',
                  obscureText: true,
                  decoration: InputDecoration(
                    // ignore: prefer_const_constructors
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.brown),
                    ),
                    labelText: 'Enter Your Password',
                    labelStyle: TextStyle(color: Colors.brown),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              FractionallySizedBox(
                widthFactor: 0.8,
                child: OutlinedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.brown[300]),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Coffees(),
                      ),
                    );
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
