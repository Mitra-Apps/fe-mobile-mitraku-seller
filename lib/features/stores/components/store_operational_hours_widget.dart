import 'package:flutter/material.dart';
import 'package:mitraku_seller/core/dimens/app_dimens.dart';
import 'package:mitraku_seller/features/stores/components/hours_open_close_widget.dart';

class StoreOperationalHoursWidget extends StatelessWidget {
  const StoreOperationalHoursWidget({
    super.key,
    this.isOpen24HoursWeekly = const [],
    this.isClosedDayWeekly = const [],
    this.timeOpenWeekly = const [],
    this.timeClosedWeekly = const [],
  });

  final List<bool> isOpen24HoursWeekly;
  final List<bool> isClosedDayWeekly;
  final List<TimeOfDay?> timeOpenWeekly;
  final List<TimeOfDay?> timeClosedWeekly;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimens.basePaddingDouble),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Waktu Operasional',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 7,
            itemBuilder: (context, index) => isOpen24HoursWeekly[index]
                ? HoursOpenCloseWidget(
                    dayIndex: index,
                    is24HoursOpen: true,
                  )
                : isClosedDayWeekly[index]
                    ? HoursOpenCloseWidget(
                        dayIndex: index,
                        isClosedDay: true,
                      )
                    : HoursOpenCloseWidget(
                        dayIndex: index,
                        openTime: timeOpenWeekly[index],
                        closeTime: timeClosedWeekly[index],
                      ),
          ),
        ],
      ),
    );
  }
}
