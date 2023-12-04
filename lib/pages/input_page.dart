// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input 999999999"),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Username"),
                SizedBox(height: 20),
                usernameText(),
                SizedBox(height: 20),
                passwordText(),
                SizedBox(height: 20),
                ElevatedButton.icon(
                    onPressed: () {
                      print("siriwan");
                      if(_formKey.currentState!.validate()){
                        debugPrint("successful");
                      }
                    },
                    icon: Icon(Icons.login_rounded),
                    label: const Text("เข้าสู่ระบบ"))
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextFormField usernameText() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'กรุณาใส่ชื่อ';
        }
        return null;
      },
      controller: nameController,
      decoration: const InputDecoration(
          icon: Icon(Icons.person),
          labelText: "Username",
          hintText: "ใส่ชื่อผู้ใช้",
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 224, 4, 224)),
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 228, 8, 236)),
              borderRadius: BorderRadius.all(Radius.circular(15)))),
      onChanged: (value) {
        setState(() {});
      },
    );
  }

  TextFormField passwordText() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'กรุณาpassword';
        }
        return null;
      },

      controller: passwordController,
      obscureText: true,
      decoration: const InputDecoration(
          icon: Icon(Icons.lock),
          labelText: "Password",
          hintText: "รหัสผ่าน",
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 224, 4, 224)),
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 228, 8, 236)),
              borderRadius: BorderRadius.all(Radius.circular(15)))),
      onChanged: (value) {
        setState(() {});
      },
    );
  }
}
