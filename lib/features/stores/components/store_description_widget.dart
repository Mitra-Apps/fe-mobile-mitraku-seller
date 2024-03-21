// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:mitraku_seller/core/dimens/app_dimens.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';

class StoreDescriptionWidget extends StatelessWidget {
  const StoreDescriptionWidget({super.key, this.desciption});
  final String? desciption;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimens.basePaddingDouble),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Deskripsi Toko',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          AppSpacing.verticalSpacing10,
          Text(
            desciption ?? '',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
