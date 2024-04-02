import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mitraku_seller/core/dimens/app_dimens.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';

class StoreProfileWidget extends StatelessWidget {
  const StoreProfileWidget({
    super.key,
    this.imagePath = '',
    this.imageUrl = '',
    this.name = '',
    this.phone = '',
    this.address = '',
  });
  final String imagePath;
  final String imageUrl;
  final String name;
  final String phone;
  final String address;

  bool _isValidUrl(String url) {
    // Regular expression to check if the string is a valid URL
    final RegExp urlRegExp = RegExp(
      r'^(https?|ftp):\/\/[^\s\/$.?#].[^\s]*$',
    );
    return urlRegExp.hasMatch(url);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimens.basePaddingDouble),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Profil Toko',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          AppSpacing.verticalSpacing10,
          Row(
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  clipBehavior: Clip.hardEdge,
                  color: AppColors.disabledLightColor,
                  child: imagePath.isNotEmpty
                      ? _isValidUrl(imagePath)
                          ? Image.network(
                              imagePath,
                              width: double.infinity,
                              height: 120,
                            )
                          : Image.file(
                              File(imagePath),
                              width: double.infinity,
                              height: 120,
                            )
                      : imageUrl.isNotEmpty
                          ? Image.network(
                              imageUrl,
                              width: double.infinity,
                              height: 120,
                            )
                          : Container(
                              height: 60,
                              width: 60,
                              alignment: Alignment.center,
                              child: SvgPicture.asset(
                                  'assets/icons/icon_toko_anda.svg',
                                  height: 60,
                                  width: 60),
                            ),
                ),
              ),
              AppSpacing.horizontalSpacing10,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 16,
                          width: 16,
                          child: SvgPicture.asset(
                            'assets/icons/icon_toko_profile.svg',
                          ),
                        ),
                        AppSpacing.horizontalSpacing4,
                        Expanded(
                          child: Text(
                            name,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    AppSpacing.verticalSpacing10,
                    Row(
                      children: [
                        SizedBox(
                          height: 16,
                          width: 16,
                          child: SvgPicture.asset(
                            'assets/icons/icon_telephone.svg',
                          ),
                        ),
                        AppSpacing.horizontalSpacing4,
                        Expanded(
                          child: Text(
                            phone.replaceFirst('62', '+62 - '),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    AppSpacing.verticalSpacing10,
                    Row(
                      children: [
                        SizedBox(
                          height: 16,
                          width: 16,
                          child: SvgPicture.asset(
                            'assets/icons/icon_location.svg',
                          ),
                        ),
                        AppSpacing.horizontalSpacing4,
                        Expanded(
                          child: Text(
                            address,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
