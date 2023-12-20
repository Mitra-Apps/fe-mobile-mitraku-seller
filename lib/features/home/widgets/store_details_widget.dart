import 'package:flutter/material.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/generated/l10n.dart';

class StoreDetailsWidget extends StatelessWidget {
  const StoreDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).approval_status,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        AppSpacing.verticalSpacing8,
        Text('Waiting for Approval'),
        AppSpacing.verticalSpacing32,
        Text(
          S.of(context).description,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        AppSpacing.verticalSpacing8,
        Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam pharetra erat in ullamcorper imperdiet. Phasellus eget velit a justo finibus mattis. Nulla eleifend aliquet neque a vehicula. Praesent scelerisque, sapien eget eleifend lobortis, quam dui tristique lacus, a cursus metus justo eget felis. In viverra fringilla orci quis volutpat. Etiam pulvinar eu tortor sit amet mattis. Donec gravida pellentesque efficitur. Nunc eu turpis sed arcu cursus scelerisque. Integer tempus aliquet mollis. Duis dapibus massa quis tellus luctus, id viverra nisi pharetra. Donec bibendum sollicitudin tellus, quis ornare tellus lacinia finibus.'),
        AppSpacing.verticalSpacing32,
        Text(
          S.of(context).owner_details,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        AppSpacing.verticalSpacing8,
        Text('Name: John Smith'),
        Text('Email: JohnSmith@SuperEliteAgent.com'),
        Text('Phone: 080989999'),
      ],
    );
  }
}
