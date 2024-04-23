import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/router/app_router.dart';

class EmptyProductScreen extends StatelessWidget {
  const EmptyProductScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
            onPressed: () {
              context.push(AppRouter.createProductPath);
            },
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
}