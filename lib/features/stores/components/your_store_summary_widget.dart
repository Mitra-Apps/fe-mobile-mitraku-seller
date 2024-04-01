import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:mitraku_seller/core/dimens/app_dimens.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/features/stores/bloc/create_edit_store_cubit.dart';
import 'package:mitraku_seller/features/stores/components/store_description_widget.dart';
import 'package:mitraku_seller/features/stores/components/store_operational_hours_widget.dart';
import 'package:mitraku_seller/features/stores/components/store_profile_widget.dart';
import 'package:rest_client/rest_client.dart';

class YourStoreSummaryWidget extends StatelessWidget {
  const YourStoreSummaryWidget({
    required this.state,
    required this.defaultState,
    required this.onEditStoreCallback,
    super.key,
  });
  final MyStoreResponse state;
  final StoreModel defaultState;
  final Function() onEditStoreCallback;

  void _setStoreSchedule() {
    for (var i = 0; i < state.hours.length; i++) {
      final dayIndex = state.hours[i].dayOfWeek;
      defaultState.scheduleModel?.isOpen24HoursWeekly[dayIndex] =
          state.hours[dayIndex].is24Hours;
      defaultState.scheduleModel?.isClosedDayWeekly[dayIndex] =
          !state.hours[dayIndex].isOpen;
      defaultState.scheduleModel?.timeOpenWeekly[dayIndex] =
          TimeOfDay.fromDateTime(
        DateFormat('hh:mm').parse(state.hours[dayIndex].open),
      );
      defaultState.scheduleModel?.timeClosedWeekly[dayIndex] =
          TimeOfDay.fromDateTime(
        DateFormat('hh:mm').parse(state.hours[dayIndex].close),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    _setStoreSchedule();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StoreProfileWidget(
            imageUrl:
                state.images.isNotEmpty ? state.images.first.imageUrl : '',
            name: state.storeName,
            phone: state.phone,
            address: state.address,
          ),
          const Divider(
            color: AppColors.disabledColor,
            thickness: 1,
          ),
          StoreDescriptionWidget(
            desciption: state.storeDescription,
          ),
          const Divider(
            color: AppColors.disabledColor,
            thickness: 1,
          ),
          StoreOperationalHoursWidget(
            isOpen24HoursWeekly:
                defaultState.scheduleModel!.isOpen24HoursWeekly,
            isClosedDayWeekly: defaultState.scheduleModel!.isClosedDayWeekly,
            timeOpenWeekly: defaultState.scheduleModel!.timeOpenWeekly,
            timeClosedWeekly: defaultState.scheduleModel!.timeClosedWeekly,
          ),
          Padding(
            padding: const EdgeInsets.all(AppDimens.basePaddingDouble),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(
                    AppDimens.basePaddingHalf,
                  ),
                  backgroundColor: AppColors.mainColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: onEditStoreCallback,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 18,
                      height: 18,
                      child: SvgPicture.asset(
                        'assets/icons/icon_edit.svg',
                        color: AppColors.mainWhiteColor,
                      ),
                    ),
                    AppSpacing.horizontalSpacing10,
                    Text(
                      'Ubah Toko',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.mainWhiteColor),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
