part of 'products_cubit.dart';

@immutable
abstract class ProductsState {}

final class ProductsInitial extends ProductsState {}
class ProductsUpdate extends ProductsState {
  final List<ProductModel> updatedProducts;
  ProductsUpdate(this.updatedProducts);
}