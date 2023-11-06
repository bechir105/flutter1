import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Formulaire'),
        ),
        body: RegistrationForm(),
      ),
    );
  }
}

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _birthYearController = TextEditingController();
  final TextEditingController _billingAddressController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            "assets/minecraft.jpg",
            width: 400,
            height: 400,
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(hintText: 'Username'),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(hintText: 'Email'),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(hintText: 'Mot de passe'),
                  obscureText: true, // Pour masquer le texte
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _birthYearController,
                  decoration: InputDecoration(hintText: 'Année de naissance'),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _billingAddressController,
                  decoration:
                      InputDecoration(hintText: 'Adresse de facturation'),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("S'inscrire"),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Annuler'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
