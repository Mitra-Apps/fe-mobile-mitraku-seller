import 'package:flutter/material.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:rest_client/rest_client.dart';

class ItemProductWidget extends StatelessWidget {
  const ItemProductWidget({
    required this.index,
    required this.product,
    super.key,
  });

  final int index;
  final ProductResponse product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.disabledLightColor,
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    width: 80,
                    height: 68,
                    'assets/images/dashboard_kategori_produk.png',
                    fit: BoxFit.contain,
                  ),
                ),
                AppSpacing.horizontalSpacing12,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.mainBlackColor,
                                ),
                      ),
                      Text(
                        product.productCategoryName,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: AppColors.mainBlackColor,
                            ),
                      ),
                      Text(
                        '${product.stock} ${product.uom}',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: AppColors.mainBlackColor,
                            ),
                      ),
                    ],
                  ),
                ),
                AppSpacing.horizontalSpacing8,
                IconButton(
                  icon: const Icon(Icons.more_vert),
                  iconSize: 28,
                  onPressed: () {
                    _showSnackBar(context, 'Yuhuu icon button');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showSnackBar(BuildContext context, String text) {
    final snackBar = SnackBar(
      content: Text(text),
      duration: const Duration(seconds: 5),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
