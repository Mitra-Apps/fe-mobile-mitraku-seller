import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mitraku_seller/features/stores/bloc/your_store_bloc.dart';

class YourStoreLoadingWidget extends StatelessWidget {
  const YourStoreLoadingWidget({
    required this.onChangeLoadingStatusCallback,
    super.key,
  });
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
      context.read<YourStoreBloc>().add(
            const YourStoreEvent.getMyStoreRequest(),
          );
    } catch (error) {
      // Handle errors
      if (kDebugMode) {
        print('Error: $error');
      }
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
