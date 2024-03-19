import 'package:flutter/material.dart';
import 'package:mitraku_seller/core/dimens/app_dimens.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';

class YourStorePleaseCreateWidget extends StatelessWidget {
  const YourStorePleaseCreateWidget(
      {required this.onCreateStoreCallback, super.key});
  final Function() onCreateStoreCallback;

  // void test(BuildContext context) {
  //   // Access the BLoC using the context
  //   final TokoAndaBloc myBloc = BlocProvider.of<TokoAndaBloc>(context);

  //   // Use the BLoC instance as needed
  //   myBloc.add(MyEvent());

  //   context.read<TokoAndaBloc>().add(
  //         const TokoAndaEvent.myStoreGetRequested(),
  //       );
  // }

  // Future<void> _fetchDataFromApi(BuildContext context) async {
  //   try {
  //     // Make an API call using Dio
  //     context.read<YourStoreBloc>().add(
  //           const YourStoreEvent.getMyStoreRequest(),
  //         );
  //   } catch (error) {
  //     // Handle errors
  //     print('Error: $error');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // _fetchDataFromApi(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 140,
            height: 180,
            child: Image.asset(
              'assets/images/toko_anda_silahkan_buat.png',
              fit: BoxFit.contain,
            ),
          ),
          Text(
            'Silakan Buat Toko Anda',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold, color: AppColors.disabledColor),
          ),
          AppSpacing.verticalSpacing16,
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(AppDimens.basePaddingHalf),
              backgroundColor: AppColors.warningColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            // onPressed: () {
            //   context.read<TokoAndaBloc>().add(
            //         const TokoAndaEvent.myStoreGetRequested(),
            //       );
            // },
            onPressed: onCreateStoreCallback,
            child: Text(
              'Buat Toko',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.mainWhiteColor,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
