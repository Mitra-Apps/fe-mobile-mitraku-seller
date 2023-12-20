import 'package:flutter/material.dart';
import 'package:mitraku_seller/core/dimens/app_dimens.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/generated/l10n.dart';

class OpeningHoursWidget extends StatelessWidget {
  const OpeningHoursWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                S.of(context).opening_hours,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Icon(Icons.edit),
            ],
          ),
          AppSpacing.verticalSpacing8,
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Color.fromARGB(255, 214, 214, 214),
            child: Padding(
              padding: EdgeInsets.all(AppDimens.basePaddingDouble),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(S.of(context).monday),
                      AppSpacing.verticalSpacing4,
                      Text(S.of(context).tuesday),
                      AppSpacing.verticalSpacing4,
                      Text(S.of(context).wednesday),
                      AppSpacing.verticalSpacing4,
                      Text(S.of(context).thursday),
                      AppSpacing.verticalSpacing4,
                      Text(S.of(context).friday),
                      AppSpacing.verticalSpacing4,
                      Text(S.of(context).saturday),
                      AppSpacing.verticalSpacing4,
                      Text(S.of(context).sunday),
                    ],
                  ),
                  AppSpacing.horizontalSpacing16,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('08:00 - 21:00'),
                      AppSpacing.verticalSpacing4,
                      Text('08:00 - 21:00'),
                      AppSpacing.verticalSpacing4,
                      Text('08:00 - 21:00'),
                      AppSpacing.verticalSpacing4,
                      Text('08:00 - 21:00'),
                      AppSpacing.verticalSpacing4,
                      Text('08:00 - 21:00'),
                      AppSpacing.verticalSpacing4,
                      Text(S.of(context).hours_24),
                      AppSpacing.verticalSpacing4,
                      Text(S.of(context).closed),
                    ],
                  )
                ],
              ),
            ),
          )
        ]);
  }
}
