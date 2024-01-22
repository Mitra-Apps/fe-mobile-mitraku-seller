// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:mitraku_seller/core/dimens/app_dimens.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';

class DeskripsiTokoWidget extends StatelessWidget {
  const DeskripsiTokoWidget({super.key});

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
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam pharetra erat in ullamcorper imperdiet. Phasellus eget velit a justo finibus mattis. Nulla eleifend aliquet neque a vehicula. Praesent scelerisque, sapien eget eleifend lobortis, quam dui tristique lacus, a cursus metus justo eget felis. In viverra fringilla orci quis volutpat. Etiam pulvinar eu tortor sit amet mattis. Donec gravida pellentesque efficitur. Nunc eu turpis sed arcu cursus scelerisque. Integer tempus aliquet mollis. Duis dapibus massa quis tellus luctus, id viverra nisi pharetra. Donec bibendum sollicitudin tellus, quis ornare tellus lacinia finibus.',
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
