import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:mitraku_seller/core/keys/app_keys.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/features/stores/bloc/create_edit_store_cubit.dart';
import 'package:mitraku_seller/features/stores/bloc/your_store_bloc.dart';
import 'package:mitraku_seller/features/stores/views/edit_store_hours_page.dart';
import 'package:mitraku_seller/features/stores/views/edit_store_information_page.dart';
import 'package:mitraku_seller/features/stores/views/edit_store_summary_page.dart';
import 'package:rest_client/rest_client.dart';

class EditStorePage extends StatefulWidget {
  const EditStorePage({
    required this.cancelCreateStoreCallback,
    required this.successCreateStoreCallback,
    super.key,
  });
  final VoidCallback cancelCreateStoreCallback;
  final VoidCallback successCreateStoreCallback;

  @override
  State<EditStorePage> createState() => _EditStorePage();
}

class _EditStorePage extends State<EditStorePage> {
  late CreateEditStoreCubit editStoreCubit;
  late MyStoreResponse myStoreResponse;
  int currentEditStoreStep = 1;
  StoreModel defaultStoreModel = StoreModel.defaultStore();

  void _changeEditStoreStepCallback(int editStoreStep) {
    setState(() {
      if (editStoreStep == 0) {
        widget.cancelCreateStoreCallback();
      } else if (editStoreStep == 200) {
        widget.successCreateStoreCallback();
      } else {
        currentEditStoreStep = editStoreStep;
      }
    });
  }

  void _setCurrentStoreCubit() {
    for (final currentStoreHour in myStoreResponse.hours) {
      final dayIndex = currentStoreHour.dayOfWeek;
      defaultStoreModel.scheduleModel?.hourIdWeekly[dayIndex] =
          currentStoreHour.id;
      defaultStoreModel.scheduleModel?.hourStoreIdWeekly[dayIndex] =
          currentStoreHour.storeId;
      defaultStoreModel.scheduleModel?.isOpen24HoursWeekly[dayIndex] =
          currentStoreHour.is24Hours;
      defaultStoreModel.scheduleModel?.isClosedDayWeekly[dayIndex] =
          !currentStoreHour.isOpen;
      defaultStoreModel.scheduleModel?.timeOpenWeekly[dayIndex] =
          TimeOfDay.fromDateTime(
        DateFormat('hh:mm').parse(currentStoreHour.open),
      );
      defaultStoreModel.scheduleModel?.timeClosedWeekly[dayIndex] =
          TimeOfDay.fromDateTime(
        DateFormat('hh:mm').parse(currentStoreHour.close),
      );
    }
    editStoreCubit.updateStoreModel(
      name: myStoreResponse.storeName,
      phone: myStoreResponse.phone,
      address: myStoreResponse.address,
      description: myStoreResponse.storeDescription,
      imagePath: myStoreResponse.images.isNotEmpty
          ? myStoreResponse.images.first.imageUrl
          : null,
    );
    context.read<CreateEditStoreCubit>().updateStoreScheduleModel(
          scheduleModel: StoreScheduleModel(
            defaultStoreModel.scheduleModel!.hourIdWeekly,
            defaultStoreModel.scheduleModel!.hourStoreIdWeekly,
            defaultStoreModel.scheduleModel!.dayOfWeekly,
            isOpen24HoursWeekly:
                defaultStoreModel.scheduleModel!.isOpen24HoursWeekly,
            isClosedDayWeekly:
                defaultStoreModel.scheduleModel!.isClosedDayWeekly,
            timeOpenWeekly: defaultStoreModel.scheduleModel!.timeOpenWeekly,
            timeClosedWeekly: defaultStoreModel.scheduleModel!.timeClosedWeekly,
          ),
        );
  }

  @override
  void initState() {
    super.initState();
    // Access the UserCubit using context.read in initState
    myStoreResponse = context.read<YourStoreBloc>().state.myStoreResponse!;
    editStoreCubit = context.read<CreateEditStoreCubit>();
    _setCurrentStoreCubit();
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
      body: switch (currentEditStoreStep) {
        1 => EditStoreInformationPage(
            changeCreateStoreStep: _changeEditStoreStepCallback,
          ),
        2 => EditStoreHoursPage(
            changeCreateStoreStep: _changeEditStoreStepCallback,
          ),
        3 => EditStoreSummaryPage(
            changeCreateStoreStep: _changeEditStoreStepCallback,
          ),
        // TODO: Handle this case.
        int() => null,
      },
    );
  }
}
