import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mitraku_seller/core/keys/app_keys.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/features/stores/views/create_store_hours_page.dart';
import 'package:mitraku_seller/features/stores/views/create_store_information_page.dart';
import 'package:mitraku_seller/features/stores/views/create_store_summary_page.dart';

class CreateStorePage extends StatefulWidget {
  const CreateStorePage({
    required this.cancelCreateStoreCallback,
    required this.successCreateStoreCallback,
    super.key,
  });
  final VoidCallback cancelCreateStoreCallback;
  final VoidCallback successCreateStoreCallback;

  @override
  State<CreateStorePage> createState() => _CreateStorePage();
}

class _CreateStorePage extends State<CreateStorePage> {
  int currentCreateStoreStep = 1;

  void _changeCreateStoreStepCallback(int createStoreStep) {
    setState(() {
      if (createStoreStep == 0) {
        widget.cancelCreateStoreCallback();
      } else if (createStoreStep == 200) {
        widget.successCreateStoreCallback();
      } else {
        currentCreateStoreStep = createStoreStep;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainWhiteColor,
      key: const Key(WidgetKeys.tokoAndaScaffoldKey),
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(
              width: 24,
              height: 24,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  padding: EdgeInsets.zero,
                  backgroundColor: AppColors.mainWhiteColor,
                ),
                onPressed: () {
                  widget.cancelCreateStoreCallback();
                },
                child: SvgPicture.asset(
                  'assets/icons/icon_arrow_left.svg',
                  color: AppColors.mainBlackColor,
                ),
              ),
            ),
            AppSpacing.horizontalSpacing10,
            Text(
              'Toko Anda',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: switch (currentCreateStoreStep) {
        1 => CreateStoreInformationPage(
            changeCreateStoreStep: _changeCreateStoreStepCallback,
          ),
        2 => CreateStoreHoursPage(
            changeCreateStoreStep: _changeCreateStoreStepCallback,
          ),
        3 => CreateStoreSummaryPage(
            changeCreateStoreStep: _changeCreateStoreStepCallback,
          ),
        // TODO: Handle this case.
        int() => null,
      },
    );
  }
}
