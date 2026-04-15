import 'package:flutter/material.dart';

class ApiCall extends StatelessWidget {
  const ApiCall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:CustomApiBottonCall(onTap: () {
              
            },)
          )
        ],
      ),
    );
  }
}

class CustomApiBottonCall extends StatelessWidget {
  const CustomApiBottonCall({super.key, this.onTap});
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
              onTap:onTap ,
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Center(child: Text("Call API",style: TextStyle(fontSize: 32),),),
              ),
            );
  }
}