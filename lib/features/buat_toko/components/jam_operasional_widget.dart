import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mitraku_seller/core/dimens/app_dimens.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';

class BuatTokoJamWidget extends StatefulWidget {
  const BuatTokoJamWidget({
    required this.dayTitle,
    super.key,
  });
  final String dayTitle;

  @override
  State<BuatTokoJamWidget> createState() => _BuatTokoJamWidgetState();
}

class _BuatTokoJamWidgetState extends State<BuatTokoJamWidget> {
  bool is24JamChecked = false;
  bool isStoreClosed = false;
  TimeOfDay selectedOpenTime = TimeOfDay.now();
  TimeOfDay selectedClosedTime = TimeOfDay.now();

  Widget open24HoursWidgets() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 18,
          height: 18,
          child: SvgPicture.asset(
            'assets/icons/icon_toko_anda.svg',
            color: AppColors.successColor,
          ),
        ),
        AppSpacing.horizontalSpacing10,
        Text(
          'Buka 24 Jam',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.bold, color: AppColors.successColor),
        ),
      ],
    );
  }

  Widget storeClosedWidgets() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 18,
          height: 18,
          child: SvgPicture.asset(
            'assets/icons/icon_toko_anda.svg',
            color: AppColors.successColor,
          ),
        ),
        AppSpacing.horizontalSpacing10,
        Text(
          'Buka 24 Jam',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.bold, color: AppColors.successColor),
        ),
      ],
    );
  }

  String _formatTimeOfDay(TimeOfDay timeOfDay) {
    // Use hour and minute properties to create a formatted string
    // in 24-hour format
    return '${timeOfDay.hour.toString().padLeft(2, '0')}'
        ':${timeOfDay.minute.toString().padLeft(2, '0')}';
  }

  Future<void> _selectOpenTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedOpenTime,
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child!,
        );
      },
    );

    if (picked != null && picked != selectedOpenTime) {
      setState(() {
        selectedOpenTime = picked;
      });
    }
  }

  Future<void> _selectClosedTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedClosedTime,
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child!,
        );
      },
    );

    if (picked != null && picked != selectedClosedTime) {
      setState(() {
        selectedClosedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppDimens.basePaddingDouble),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  widget.dayTitle,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              if (isStoreClosed)
                Container()
              else
                InkWell(
                  onTap: () {
                    setState(() {
                      is24JamChecked = !is24JamChecked;
                    });
                  },
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: is24JamChecked
                          ? AppColors.mainColor
                          : AppColors.disabledLightColor,
                    ),
                    child: is24JamChecked
                        ? Icon(
                            Icons.check,
                            color: AppColors.mainWhiteColor,
                            size: 18,
                          )
                        : null,
                  ),
                ),
              AppSpacing.horizontalSpacing10,
              if (isStoreClosed)
                Container()
              else
                Text(
                  '24 Jam',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: AppColors.mainBlackColor),
                ),
              AppSpacing.horizontalSpacing10,
              Container(width: 1, height: 20, color: AppColors.disabledColor),
              Switch(
                value: isStoreClosed,
                onChanged: (value) {
                  setState(() {
                    isStoreClosed = value;
                  });
                },
                activeTrackColor: AppColors.disabledLightColor,
                inactiveTrackColor: AppColors.disabledLightColor,
                activeColor: AppColors.mainColor,
              ),
              Text(
                'Toko Tutup',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: AppColors.mainBlackColor),
              ),
            ],
          ),
        ),
        AppSpacing.verticalSpacing10,
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppDimens.basePaddingDouble),
          child: isStoreClosed
              ? storeClosedWidgets()
              : is24JamChecked
                  ? open24HoursWidgets()
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Waktu Buka',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: AppColors.disabledColor),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    padding: EdgeInsets.zero,
                                    alignment: Alignment.centerLeft,
                                    backgroundColor:
                                        AppColors.disabledLightColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  onPressed: () => _selectOpenTime(context),
                                  child: Padding(
                                    padding: const EdgeInsets.all(
                                        AppDimens.basePadding),
                                    child: Text(
                                      _formatTimeOfDay(selectedOpenTime),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: AppColors.disabledColor),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        AppSpacing.horizontalSpacing8,
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Waktu Tutup',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: AppColors.disabledColor),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    padding: EdgeInsets.zero,
                                    alignment: Alignment.centerLeft,
                                    backgroundColor:
                                        AppColors.disabledLightColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  onPressed: () => _selectClosedTime(context),
                                  child: Padding(
                                    padding: const EdgeInsets.all(
                                        AppDimens.basePadding),
                                    child: Text(
                                      _formatTimeOfDay(selectedClosedTime),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: AppColors.disabledColor),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
        ),
        AppSpacing.verticalSpacing10,
        Divider(
          color: AppColors.disabledColor,
          thickness: 1,
        ),
      ],
    );
  }
}
