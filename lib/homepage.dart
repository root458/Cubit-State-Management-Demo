import 'package:catalogue_demo/components/error_view.dart';
import 'package:catalogue_demo/components/list_view.dart';
import 'package:catalogue_demo/components/loading_screen.dart';
import 'package:catalogue_demo/cubit/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // Get cubit from provider
    final productsCubit = BlocProvider.of<ProductsCubit>(context);

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          productsCubit.getPhones();
        },
        child: const Icon(Icons.refresh)
      ),
      appBar: AppBar(
        leading: const Icon(Icons.phone_android),
        title: const Text('Available Devices'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: BlocBuilder<ProductsCubit, ProductsState>(
        builder: ((context, state) {
          if (state is ProductsLoading) {
            productsCubit.getPhones();
            return buildLoadingScreen(context);
          } else if (state is ProductsLoaded) {
            return buildListView(state.phonesList.phonesList);
          } else if (state is ProductsError) {
            return buildErrorView(context);
          } else {
            return buildErrorView(context);
          }
        }),
      ),
    );
  }
}
