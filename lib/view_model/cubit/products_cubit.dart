import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:testing/models/product_model.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit() : super(ProductsInitial());
  final List<ProductModel> products = [
    ProductModel(text: "Iphone", isFav: true),
    ProductModel(text: "samsong", isFav: false),
  ];
  void setFav(int index) {
    products[index].isFav = !products[index].isFav;
    emit(ProductsUpdate(List.from(products)));
  }
}
