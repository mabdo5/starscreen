import 'package:flutter/material.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Login",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: emailcontroller,
              keyboardType: TextInputType.emailAddress,
              onFieldSubmitted: (value) {
                print(value);
              },
              onChanged: ((value) {
                print(value);
              }),
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: "Email Address",
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: passwordcontroller,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              onFieldSubmitted: (value) {
                print(value);
              },
              onChanged: ((value) {
                print(value);
              }),
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  labelText: "Password",
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              color: Colors.blue,
              child: MaterialButton(
                onPressed: () {
                  print(emailcontroller.text);
                  print(passwordcontroller.text);
                },
                child: Text(
                  "LOGIN",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?',
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Register Now',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
