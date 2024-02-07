import 'package:flutter/material.dart';
import 'package:mitraku_seller/core/keys/app_keys.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  bool isProductCreated = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainWhiteColor,
      key: const Key(WidgetKeys.productScaffoldKey),
      appBar: appBar(context),
      body: !isProductCreated ? emptyState(context) : showDataProduct(context),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      title: Text(
        'Daftar Produk',
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  Center emptyState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Daftar Produk',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.mainBlackColor,
                ),
          ),
          AppSpacing.verticalSpacing8,
          Image.asset(
            'assets/images/dashboard_kategori_produk.png',
            height: 180,
            width: 140,
            fit: BoxFit.contain,
          ),
          Text(
            'Anda belum memiliki produk',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.disabledColor,
                ),
          ),
          AppSpacing.verticalSpacing8,
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.warningColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              'Tambah Produk',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.mainWhiteColor,
                  ),
            ),
          ),
        ],
      ),
    );
  }

  SingleChildScrollView showDataProduct(BuildContext context) {
    return const SingleChildScrollView();
  }
}
