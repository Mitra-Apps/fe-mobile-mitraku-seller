import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mitraku_seller/core/dimens/app_dimens.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/features/stores/bloc/create_store_cubit.dart';
import 'package:mitraku_seller/features/stores/components/create_store_hours_widget.dart';
import 'package:mitraku_seller/features/stores/components/create_store_step_widget.dart';

class CreateStoreHoursPage extends StatefulWidget {
  const CreateStoreHoursPage({required this.changeCreateStoreStep, super.key});
  final Function(int) changeCreateStoreStep;

  @override
  State<CreateStoreHoursPage> createState() => _BuatTokoPage();
}

class _BuatTokoPage extends State<CreateStoreHoursPage> {
  late CreateStoreCubit buatTokoCubit;
  bool isMandatoryFieldCompleted = false;

  void _updateOpen24HoursCallback(
    int dayIndex,
    bool isSetToOpen,
  ) {
    final StoreModel currentState = buatTokoCubit.state;
    final List<bool> updatedIsOpen24HoursWeekly =
        currentState.scheduleModel!.isOpen24HoursWeekly;
    updatedIsOpen24HoursWeekly[dayIndex] = isSetToOpen;
    context.read<CreateStoreCubit>().updateStoreScheduleModel(
          scheduleModel: StoreScheduleModel(
              isOpen24HoursWeekly: updatedIsOpen24HoursWeekly,
              isClosedDayWeekly: currentState.scheduleModel!.isClosedDayWeekly,
              timeOpenWeekly: currentState.scheduleModel!.timeOpenWeekly,
              timeClosedWeekly: currentState.scheduleModel!.timeClosedWeekly),
        );
    _checkMandatoryField();
  }

  void _updateClosedDayCallback(
    int dayIndex,
    bool isSetToClosed,
  ) {
    final StoreModel currentState = buatTokoCubit.state;
    final List<bool> updatedIsClosedDayWeekly =
        currentState.scheduleModel!.isClosedDayWeekly;
    updatedIsClosedDayWeekly[dayIndex] = isSetToClosed;
    context.read<CreateStoreCubit>().updateStoreScheduleModel(
          scheduleModel: StoreScheduleModel(
              isOpen24HoursWeekly:
                  currentState.scheduleModel!.isOpen24HoursWeekly,
              isClosedDayWeekly: updatedIsClosedDayWeekly,
              timeOpenWeekly: currentState.scheduleModel!.timeOpenWeekly,
              timeClosedWeekly: currentState.scheduleModel!.timeClosedWeekly),
        );
    _checkMandatoryField();
  }

  void _updateTimeOpenCallback(
    int dayIndex,
    TimeOfDay value,
  ) {
    final StoreModel currentState = buatTokoCubit.state;
    final List<TimeOfDay?> updatedTimeOpenWeekly =
        currentState.scheduleModel!.timeOpenWeekly;
    updatedTimeOpenWeekly[dayIndex] = value;
    context.read<CreateStoreCubit>().updateStoreScheduleModel(
          scheduleModel: StoreScheduleModel(
              isOpen24HoursWeekly:
                  currentState.scheduleModel!.isOpen24HoursWeekly,
              isClosedDayWeekly: currentState.scheduleModel!.isClosedDayWeekly,
              timeOpenWeekly: updatedTimeOpenWeekly,
              timeClosedWeekly: currentState.scheduleModel!.timeClosedWeekly),
        );
    _checkMandatoryField();
  }

  void _updateTimeClosedCallback(
    int dayIndex,
    TimeOfDay value,
  ) {
    final StoreModel currentState = buatTokoCubit.state;
    final List<TimeOfDay?> updatedTimeClosedWeekly =
        currentState.scheduleModel!.timeClosedWeekly;
    updatedTimeClosedWeekly[dayIndex] = value;
    context.read<CreateStoreCubit>().updateStoreScheduleModel(
          scheduleModel: StoreScheduleModel(
              isOpen24HoursWeekly:
                  currentState.scheduleModel!.isOpen24HoursWeekly,
              isClosedDayWeekly: currentState.scheduleModel!.isClosedDayWeekly,
              timeOpenWeekly: currentState.scheduleModel!.timeOpenWeekly,
              timeClosedWeekly: updatedTimeClosedWeekly),
        );
    _checkMandatoryField();
  }

  void _checkMandatoryField() {
    // bool hasTrueInEither = isOpen24HoursWeekly.any((value) => value) ||
    //     isClosedDayWeekly.any((value) => value);
    final StoreModel currentState = buatTokoCubit.state;
    bool hasMissingField = false;
    for (int i = 0;
        i < currentState.scheduleModel!.isOpen24HoursWeekly.length;
        i++) {
      if (!currentState.scheduleModel!.isOpen24HoursWeekly[i] &&
          !currentState.scheduleModel!.isClosedDayWeekly[i]) {
        if (currentState.scheduleModel!.timeOpenWeekly[i] == null ||
            currentState.scheduleModel!.timeClosedWeekly[i] == null) {
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
  void initState() {
    super.initState();
    // Access the UserCubit using context.read in initState
    buatTokoCubit = context.read<CreateStoreCubit>();
    // Access the initial state
    _checkMandatoryField();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateStoreCubit, StoreModel>(
      builder: (BuildContext context, StoreModel state) {
        return SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSpacing.verticalSpacing20,
              const CreateStoreStepWidget(stepNumber: 2),
              AppSpacing.verticalSpacing20,
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 7,
                itemBuilder: (context, index) => CreateStoreHoursWidget(
                  dayIndex: index,
                  isOpen24Hours:
                      state.scheduleModel!.isOpen24HoursWeekly[index],
                  isClosedDay: state.scheduleModel!.isClosedDayWeekly[index],
                  openTime: state.scheduleModel!.timeOpenWeekly[index],
                  closedTime: state.scheduleModel!.timeClosedWeekly[index],
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
                      padding: const EdgeInsets.all(AppDimens.basePaddingHalf),
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
                      padding: const EdgeInsets.all(AppDimens.basePaddingHalf),
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
      },
    );
  }
}
