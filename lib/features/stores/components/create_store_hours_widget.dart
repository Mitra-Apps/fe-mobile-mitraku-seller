import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mitraku_seller/core/dimens/app_dimens.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';

class CreateStoreHoursWidget extends StatefulWidget {
  const CreateStoreHoursWidget({
    required this.dayIndex,
    required this.isOpen24Hours,
    required this.isClosedDay,
    required this.openTime,
    required this.closedTime,
    required this.updateOpen24HoursCallback,
    required this.updateClosedDayCallback,
    required this.updateTimeOpenCallback,
    required this.updateTimeClosedCallback,
    super.key,
  });
  final int dayIndex;
  final bool isOpen24Hours;
  final bool isClosedDay;
  final TimeOfDay? openTime;
  final TimeOfDay? closedTime;
  final Function(int, bool) updateOpen24HoursCallback;
  final Function(int, bool) updateClosedDayCallback;
  final Function(int, TimeOfDay) updateTimeOpenCallback;
  final Function(int, TimeOfDay) updateTimeClosedCallback;

  @override
  State<CreateStoreHoursWidget> createState() => _CreateStoreHoursWidgetState();
}

class _CreateStoreHoursWidgetState extends State<CreateStoreHoursWidget> {
  late final String dayTitle;
  TimeOfDay selectedOpenTime = TimeOfDay.now();
  TimeOfDay selectedClosedTime = TimeOfDay.now();

  Widget open24HoursOrClosedWidgets({required bool isOpen24Hours}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 18,
          height: 18,
          child: SvgPicture.asset(
            'assets/icons/icon_toko_anda.svg',
            color:
                isOpen24Hours ? AppColors.successColor : AppColors.dangerColor,
          ),
        ),
        AppSpacing.horizontalSpacing10,
        Text(
          isOpen24Hours ? 'Buka 24 Jam' : 'Toko Tutup',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.bold,
              color: isOpen24Hours
                  ? AppColors.successColor
                  : AppColors.dangerColor),
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
        widget.updateTimeOpenCallback(widget.dayIndex, picked);
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
        widget.updateTimeClosedCallback(widget.dayIndex, picked);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    switch (widget.dayIndex) {
      case 0:
        dayTitle = 'Senin';
      case 1:
        dayTitle = 'Selasa';
      case 2:
        dayTitle = 'Rabu';
      case 3:
        dayTitle = 'Kamis';
      case 4:
        dayTitle = 'Jumat';
      case 5:
        dayTitle = 'Sabtu';
      case 6:
        dayTitle = 'Minggu';
    }
    if (widget.openTime != null) {
      selectedOpenTime = widget.openTime!;
    }
    if (widget.closedTime != null) {
      selectedOpenTime = widget.closedTime!;
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
                  dayTitle,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              if (widget.isClosedDay)
                Container()
              else
                InkWell(
                  onTap: () {
                    widget.updateOpen24HoursCallback(
                        widget.dayIndex, !widget.isOpen24Hours);
                  },
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: widget.isOpen24Hours
                          ? AppColors.mainColor
                          : AppColors.disabledLightColor,
                    ),
                    child: widget.isOpen24Hours
                        ? Icon(
                            Icons.check,
                            color: AppColors.mainWhiteColor,
                            size: 18,
                          )
                        : null,
                  ),
                ),
              AppSpacing.horizontalSpacing10,
              if (widget.isClosedDay)
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
                value: widget.isClosedDay,
                onChanged: (value) {
                  widget.updateClosedDayCallback(
                    widget.dayIndex,
                    !widget.isClosedDay,
                  );
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
          child: widget.isClosedDay
              ? open24HoursOrClosedWidgets(isOpen24Hours: false)
              : widget.isOpen24Hours
                  ? open24HoursOrClosedWidgets(isOpen24Hours: true)
                  : Row(
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
                                      widget.openTime == null
                                          ? ''
                                          : _formatTimeOfDay(selectedOpenTime),
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
                                      widget.closedTime == null
                                          ? ''
                                          : _formatTimeOfDay(
                                              selectedClosedTime),
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
