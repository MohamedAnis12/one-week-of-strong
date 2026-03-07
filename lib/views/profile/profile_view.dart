import 'package:flutter/material.dart';
import 'package:testing/views/products/products_view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 66,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 64,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 24),
                  ),
                ),
              ],
            ),

            Text("Name : Mohamed Anis",style: TextStyle(fontSize: 24,),)
            ,
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ProductsView();
                }));
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 2),
                height: 75,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(16)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
