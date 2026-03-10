import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing/view_model/cubit/products_cubit.dart';
import 'package:testing/views/products/products_view.dart';

class FavView extends StatelessWidget {
  const FavView({super.key});
  @override
  Widget build(BuildContext context) {
    final allProducts = BlocProvider.of<ProductsCubit>(context).products;
    final favProducts = allProducts.where((p) =>! p.isFav).toList();
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: favProducts.length,
              itemBuilder: (context, index) {
                return CusttomProfuctCard(
                  text: favProducts[index].text,
                  isFav: true,
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
