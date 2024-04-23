import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mitraku_seller/core/keys/app_keys.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/features/home/view/product/bloc/product_bloc.dart';
import 'package:mitraku_seller/features/home/view/product/widgets/empty_product_screen.dart';
import 'package:mitraku_seller/features/home/view/product/widgets/item_product_widget.dart';
import 'package:mitraku_seller/router/app_router.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({required this.state, super.key});

  final ProductState state;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: widget.state.isMyStoreExist
          ? buildFloatingActionButton(context)
          : null,
      backgroundColor: AppColors.mainWhiteColor,
      key: const Key(WidgetKeys.productScaffoldKey),
      appBar: buildAppBar(context),
      body: SafeArea(
        child: widget.state.productList == null
            ? const EmptyProductScreen()
            : SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                    0,
                    0,
                    0,
                    88,
                  ),
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: widget.state.productList?.length,
                    itemBuilder: (context, index) => ItemProductWidget(
                      index: index,
                      product: widget.state.productList![index],
                    ),
                  ),
                ),
              ),
      ),
    );
  }

  FloatingActionButton buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        context.push(AppRouter.createProductPath);
      },
      label: Text(
        'Tambah produk',
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: AppColors.mainWhiteColor,
              fontWeight: FontWeight.bold,
            ),
      ),
      backgroundColor: AppColors.primaryColor,
      icon: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        'Daftar Produk',
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(fontWeight: FontWeight.bold),
      ),
      automaticallyImplyLeading: false,
    );
  }
}
