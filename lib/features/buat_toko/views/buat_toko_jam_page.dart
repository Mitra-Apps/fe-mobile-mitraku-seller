import 'package:flutter/material.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/features/buat_toko/components/buat_toko_step_widget.dart';
import 'package:mitraku_seller/features/buat_toko/components/jam_operasional_widget.dart';

class BuatTokoJamPage extends StatefulWidget {
  const BuatTokoJamPage({required this.changeCreateStoreStep, super.key});
  final Function(int) changeCreateStoreStep;

  @override
  State<BuatTokoJamPage> createState() => _BuatTokoPage();
}

class _BuatTokoPage extends State<BuatTokoJamPage> {
  // Weekly schedule start from monday to sunday
  List<bool> isOpen24HoursWeekly = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  List<bool> isClosedDayWeekly = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  List<TimeOfDay?> timeOpenWeekly = [
    null,
    null,
    null,
    null,
    null,
    null,
    null,
  ];
  List<TimeOfDay?> timeClosedWeekly = [
    null,
    null,
    null,
    null,
    null,
    null,
    null,
  ];
  bool isMandatoryFieldCompleted = false;

  void _updateOpen24HoursCallback(
    int dayIndex,
    bool isSetToOpen,
  ) {
    setState(() {
      isOpen24HoursWeekly[dayIndex] = isSetToOpen;
      _mandatoryFieldCheck();
    });
  }

  void _updateClosedDayCallback(
    int dayIndex,
    bool isSetToClosed,
  ) {
    setState(() {
      isClosedDayWeekly[dayIndex] = isSetToClosed;
      _mandatoryFieldCheck();
    });
  }

  void _updateTimeOpenCallback(
    int dayIndex,
    TimeOfDay value,
  ) {
    setState(() {
      timeOpenWeekly[dayIndex] = value;
      _mandatoryFieldCheck();
    });
  }

  void _updateTimeClosedCallback(
    int dayIndex,
    TimeOfDay value,
  ) {
    setState(() {
      timeClosedWeekly[dayIndex] = value;
      _mandatoryFieldCheck();
    });
  }

  void _mandatoryFieldCheck() {
    // bool hasTrueInEither = isOpen24HoursWeekly.any((value) => value) ||
    //     isClosedDayWeekly.any((value) => value);
    bool hasMissingField = false;
    for (int i = 0; i < isOpen24HoursWeekly.length; i++) {
      if (!isOpen24HoursWeekly[i] && !isClosedDayWeekly[i]) {
        if (timeOpenWeekly[i] == null || timeClosedWeekly[i] == null) {
          hasMissingField = true;
          break;
        }
      }
    }
    setState(() {
      isMandatoryFieldCompleted = !hasMissingField;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppSpacing.verticalSpacing20,
          const BuatTokoStepWidget(stepNumber: 2),
          AppSpacing.verticalSpacing20,
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 7,
            itemBuilder: (context, index) => BuatTokoJamWidget(
              dayIndex: index,
              isOpen24Hours: isOpen24HoursWeekly[index],
              isClosedDay: isClosedDayWeekly[index],
              openTime: timeOpenWeekly[index],
              closedTime: timeClosedWeekly[index],
              updateOpen24HoursCallback: _updateOpen24HoursCallback,
              updateClosedDayCallback: _updateClosedDayCallback,
              updateTimeOpenCallback: _updateTimeOpenCallback,
              updateTimeClosedCallback: _updateTimeClosedCallback,
            ),
          ),
          AppSpacing.verticalSpacing20,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: AppColors.mainWhiteColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () {
                  widget.changeCreateStoreStep(1);
                },
                child: Text(
                  'Kembali',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.dangerColor,
                      ),
                ),
              ),
              AppSpacing.horizontalSpacing20,
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: isMandatoryFieldCompleted
                      ? AppColors.mainColor
                      : AppColors.disabledLightColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () {
                  if (isMandatoryFieldCompleted) {
                    widget.changeCreateStoreStep(3);
                  }
                },
                child: Text(
                  'Berikutnya',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: isMandatoryFieldCompleted
                            ? AppColors.mainWhiteColor
                            : AppColors.disabledColor,
                      ),
                ),
              ),
            ],
          ),
          AppSpacing.verticalSpacing20,
        ],
      ),
    );
  }
}
