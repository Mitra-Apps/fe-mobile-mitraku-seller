import 'package:flutter/material.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/generated/l10n.dart';

class OpenCloseWidget extends StatelessWidget {
  const OpenCloseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // final bool darkMode =
    //     context.select((AppBloc bloc) => bloc.state.isDarkMode);
    final bool darkMode = false;
    return Row(
      children: [
        Text(
          S.of(context).closed,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontWeight: FontWeight.bold, color: Colors.red),
        ),
        AppSpacing.horizontalSpacing8,
        Container(
          height: 20,
          width: 40,
          child: Switch(
              value: darkMode,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onChanged: (value) {}),
        )
      ],
    );
  }
}
