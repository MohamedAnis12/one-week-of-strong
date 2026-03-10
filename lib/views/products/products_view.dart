import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing/view_model/cubit/products_cubit.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: BlocProvider.of<ProductsCubit>(
                context,
              ).products.length,
              itemBuilder: (context, value) {
                return CusttomProfuctCard(
                  text: BlocProvider.of<ProductsCubit>(
                    context,
                  ).products[value].text,
                  isFav: BlocProvider.of<ProductsCubit>(
                    context,
                  ).products[value].isFav,
                  onTap: () {
                    BlocProvider.of<ProductsCubit>(context).setFav(value);
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }
}

class CusttomProfuctCard extends StatelessWidget {
  const CusttomProfuctCard({
    super.key,
    required this.text,
    required this.isFav,
    required this.onTap,
  });
  final String text;
  final void Function() onTap;
  final bool isFav;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,

        decoration: BoxDecoration(
          color: Colors.amber,
          image: DecorationImage(
            image: AssetImage("images/spong.png"),
            fit: BoxFit.fill,
          ),

          borderRadius: BorderRadius.circular(16),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Icon(
                      isFav ? Icons.favorite_border : Icons.favorite,
                      color: Colors.red,
                      size: 32,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
