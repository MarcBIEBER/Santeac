import 'package:flutter/material.dart';
import 'package:santeac/home_page.dart';
import 'package:santeac/login.dart';

class SignScreen extends StatefulWidget {
  @override
  State<SignScreen> createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121421),
      appBar: AppBar(
        title: const Text("Santeac"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Center(
                child: Container(
                    width: 250,
                    height: 187,
                    child: Image.asset('assets/logo_santeac.png')),
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 15.0, right: 15.0, top: 50, bottom: 0),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Color.fromARGB(255, 255, 255, 255), width: 0.0),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    hintText: 'Entrez un email valide tel que abc@gmail.com'),
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Color.fromARGB(255, 255, 255, 255), width: 0.0),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'Mot de passe',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    hintText: 'Entrez un mot de passe sécurisé',
                    hintStyle: TextStyle(color: Colors.white)),
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Color.fromARGB(255, 255, 255, 255), width: 0.0),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'Mot de passe',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    hintText: 'Confirmez votre mot de passe',
                    hintStyle: TextStyle(color: Colors.white)
                    ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginDemo()),
                );
              },
              child: const Text(
                'Je possède déjà un compte',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePage()));
                },
                child: const Text(
                  'Suivant',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}