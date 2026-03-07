import 'package:flutter/material.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (context,value){
            return CusttomProfuctCard(s: value,);
        
          }),
      ),

    );
  }
}


class CusttomProfuctCard extends StatelessWidget {
  const CusttomProfuctCard({super.key, required this.s});
final int s;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
      
        decoration: BoxDecoration(color: Colors.amber,
        borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("$s"),
                Icon(Icons.track_changes)
              ],
            ),
              Image.asset("images/spong.png",height: 150,),
          ],
        ),
      
      ),
    );
  }
}
