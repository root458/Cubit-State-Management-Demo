part of 'products_cubit.dart';

@immutable
abstract class ProductsState {
  const ProductsState();
}

class ProductsLoading extends ProductsState {
  const ProductsLoading();
}

class ProductsLoaded extends ProductsState {
  final PhonesList phonesList;
  const ProductsLoaded(this.phonesList);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ProductsLoaded &&
      other.phonesList == phonesList;
  }

  @override
  int get hashCode => phonesList.hashCode;
}

class ProductsError extends ProductsState {
  final String message;
  const ProductsError(this.message);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ProductsError &&
      other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}
