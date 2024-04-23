import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/router/app_router.dart';

class EmptyStoreProductScreen extends StatelessWidget {
  const EmptyStoreProductScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Toko Belum Tersedia',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.dangerColor,
            ),
          ),
          AppSpacing.verticalSpacing8,
          Image.asset(
            'assets/images/dashboard_toko_belum_tersedia.png',
            height: 180,
            width: 140,
            fit: BoxFit.contain,
          ),
          Text(
            'Silahkan buat toko untuk tambah produk',
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
              'Buat Toko',
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