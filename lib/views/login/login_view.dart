import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testing/views/profile/profile_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _globalKey = GlobalKey<FormState>();
  final _emailControler = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _globalKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Login", style: TextStyle(fontSize: 32))],
              ),
              TextFormField(
                controller: _emailControler,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                
              ),
              ElevatedButton(
                onPressed: () {
                  if (_globalKey.currentState!.validate()) {
                    
                    print("every thing is okay");
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ProfileView() ;
                    }));
                  }
                },
                child: Text("data"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
