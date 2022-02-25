import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:catalogue_demo/models/phones_list.dart';
import 'package:catalogue_demo/models/phones_list_repository.dart';
import 'package:meta/meta.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final PhonesListRepository phonesListRepository;

  ProductsCubit(this.phonesListRepository) : super(const ProductsLoading());

  Future<void> getPhones() async {
    emit(const ProductsLoading());
    try {
      final PhonesList _phonesList = PhonesList(
          phonesList: (await phonesListRepository.fetchAvailablePhones()));

      emit(ProductsLoaded(_phonesList));
    } on HttpException {
      emit(const ProductsError('Connection error :('));
    }
  }
}
