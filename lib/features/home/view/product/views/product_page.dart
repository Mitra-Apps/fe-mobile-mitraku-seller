import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mitraku_seller/core/colors/colors.dart';
import 'package:mitraku_seller/features/home/view/product/bloc/product_bloc.dart';
import 'package:mitraku_seller/features/home/view/product/views/product_screen.dart';
import 'package:mitraku_seller/features/home/view/product/widgets/empty_product_screen.dart';
import 'package:mitraku_seller/features/home/view/product/widgets/empty_store_product_screen.dart';
import 'package:mitraku_seller/injector/injector.dart';
import 'package:mitraku_seller/widgets/error_page.dart';
import 'package:mitraku_seller/widgets/loading_page.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  late FToast fToast;

  void showToastSuccess(String message) {
    final Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColors.successColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset('assets/icons/icon_white_close.svg'),
          const SizedBox(
            width: 12,
          ),
          Text(
            message,
            style: const TextStyle(
              fontSize: 8,
              fontWeight: FontWeight.normal,
              color: CustomColors.whiteColor,
            ),
          ),
        ],
      ),
    );

    fToast.showToast(
      child: toast,
      gravity: ToastGravity.TOP,
      toastDuration: const Duration(seconds: 3),
    );
  }

  void showToastFailed(String message) {
    final Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColors.dangerColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset('assets/icons/icon_white_close.svg'),
          const SizedBox(
            width: 12,
          ),
          Text(
            message,
            style: const TextStyle(
              fontSize: 8,
              fontWeight: FontWeight.normal,
              color: CustomColors.whiteColor,
            ),
          ),
        ],
      ),
    );

    fToast.showToast(
      child: toast,
      gravity: ToastGravity.TOP,
      toastDuration: const Duration(seconds: 3),
    );
  }

  @override
  void initState() {
    super.initState();
    fToast = FToast()..init(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Injector.instance<ProductBloc>()
        ..add(
          const ProductEvent.init(),
        ),
      child: BlocConsumer<ProductBloc, ProductState>(
        listenWhen: (prev, next) => prev.notification != next.notification,
        listener: (BuildContext context, ProductState state) async {
          state.notification?.when(
            notifySuccess: (message) {
              showToastSuccess(message);
            },
            notifyFailed: (message) {
              showToastFailed(message);
            },
          );
        },
        buildWhen: (prev, next) =>
            prev.status != next.status || prev.isBusy != next.isBusy,
        builder: (context, state) {
          return Stack(
            alignment: Alignment.center,
            children: [
              state.status.when(
                initial: () {
                  return const LoadingPage();
                },
                loading: () {
                  return const LoadingPage();
                },
                loadFailed: (message) {
                  return ErrorPage(
                    content: message,
                  );
                },
                loadSuccess: (message) {
                  return state.isMyStoreExist
                      ? ProductScreen(state: state)
                      : const EmptyStoreProductScreen();
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
