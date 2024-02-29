import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mitraku_seller/core/dimens/app_dimens.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/features/home/bloc/toko_anda_bloc.dart';

class MemuatTokoAndaWidget extends StatelessWidget {
  const MemuatTokoAndaWidget(
      {required this.onChangeLoadingStatusCallback, super.key});
  final Function(bool) onChangeLoadingStatusCallback;

  // void test(BuildContext context) {
  //   // Access the BLoC using the context
  //   final TokoAndaBloc myBloc = BlocProvider.of<TokoAndaBloc>(context);

  //   // Use the BLoC instance as needed
  //   myBloc.add(MyEvent());

  //   context.read<TokoAndaBloc>().add(
  //         const TokoAndaEvent.myStoreGetRequested(),
  //       );
  // }

  Future<void> _fetchDataFromApi(BuildContext context) async {
    try {
      // Make an API call using Dio
      context.read<TokoAndaBloc>().add(
            const TokoAndaEvent.myStoreGetRequested(),
          );
    } catch (error) {
      // Handle errors
      print('Error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    _fetchDataFromApi(context);

    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
