import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mitraku_seller/core/dimens/app_dimens.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/features/stores/bloc/create_edit_store_cubit.dart';
import 'package:mitraku_seller/features/stores/bloc/your_store_bloc.dart';
import 'package:mitraku_seller/features/stores/components/create_store_step_widget.dart';
import 'package:mitraku_seller/features/stores/components/store_description_widget.dart';
import 'package:mitraku_seller/features/stores/components/store_operational_hours_widget.dart';
import 'package:mitraku_seller/features/stores/components/store_profile_widget.dart';
import 'package:rest_client/rest_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreateStoreSummaryPage extends StatefulWidget {
  const CreateStoreSummaryPage({
    required this.changeCreateStoreStep,
    super.key,
  });
  final Function(int) changeCreateStoreStep;

  @override
  State<CreateStoreSummaryPage> createState() => _CreateStoreSummaryPage();
}

class _CreateStoreSummaryPage extends State<CreateStoreSummaryPage> {
  bool isLoadingApi = false;
  bool isShowSuccessDialog = false;
  late String userEmail = '';
  late List<CreateNewHour> createNewOperationalHours = [];

  // @override
  // Future<void> initState() async {
  //   super.initState();
  //   final prefs = await SharedPreferences.getInstance();
  //   userEmail = prefs.getString('email') ?? '';
  //   // fToast = FToast();
  //   // // if you want to use context from globally instead of content we need to pass navigatorKey.currentContext!
  //   // fToast.init(context);
  // }

  Future<void> _loadEmailPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    userEmail = prefs.getString('email') ?? '';
  }

  String _formatTimeOfDay(TimeOfDay timeOfDay) {
    // Use hour and minute properties to create a formatted string
    // in 24-hour format
    return '${timeOfDay.hour.toString().padLeft(2, '0')}'
        ':${timeOfDay.minute.toString().padLeft(2, '0')}';
  }

  void _setupOperationalHoursScheduleParam(StoreScheduleModel schedule) {
    for (int dayIndex = 0; dayIndex < 7; dayIndex++) {
      createNewOperationalHours.add(
        CreateNewHour(
          dayOfWeek: dayIndex,
          open: schedule.timeOpenWeekly[dayIndex] != null
              ? _formatTimeOfDay(schedule.timeOpenWeekly[dayIndex]!)
              : '00:00',
          close: schedule.timeClosedWeekly[dayIndex] != null
              ? _formatTimeOfDay(schedule.timeClosedWeekly[dayIndex]!)
              : '23:59',
          is24Hours: schedule.isOpen24HoursWeekly[dayIndex],
          isOpen: !schedule.isClosedDayWeekly[dayIndex],
        ),
      );
    }
  }

  List<ImageStore> _loadStoreImage(
    String currentImagePath,
    String currentImageType,
    String currentImageBase64,
  ) {
    if (currentImagePath.isNotEmpty &&
        currentImageType.isNotEmpty &&
        currentImageBase64.isNotEmpty) {
      return [
        ImageStore(
          imageType: currentImageType,
          imageUrl: currentImagePath,
          imageBase64: currentImageBase64,
        ),
      ];
    } else {
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    _loadEmailPreferences();
    return BlocConsumer<CreateEditStoreCubit, StoreModel>(
      listener: (context, state) async {},
      builder: (BuildContext context, StoreModel state) {
        return BlocConsumer<YourStoreBloc, YourStoreState>(
          listener: (context, state) async {
            state.notification?.when(
              notifySuccess: (message) {
                setState(() {
                  isLoadingApi = false;
                  isShowSuccessDialog = true;
                  Future.delayed(const Duration(seconds: 3), () {
                    widget.changeCreateStoreStep(200);
                  });
                });
                // _loadTokoAndaResponse(state);
                // _showToastSuccess(message);
              },
              notifyFailed: (message) {
                setState(() {
                  isLoadingApi = false;
                });
                // _loadTokoAndaResponse(state);
                // _showToastSuccess(message);
              },
            );
          },
          builder: (context, buatTokoState) {
            // Build UI based on both BuatTokoCubit and TokoAndaBloc states
            return Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppSpacing.verticalSpacing20,
                      const CreateStoreStepWidget(stepNumber: 3),
                      StoreProfileWidget(
                        imagePath: state.imagePath,
                        name: state.name,
                        phone: state.phone,
                        address: state.address,
                      ),
                      const Divider(
                        color: AppColors.disabledColor,
                        thickness: 1,
                      ),
                      StoreDescriptionWidget(
                        desciption: state.description,
                      ),
                      const Divider(
                        color: AppColors.disabledColor,
                        thickness: 1,
                      ),
                      StoreOperationalHoursWidget(
                        isOpen24HoursWeekly:
                            state.scheduleModel!.isOpen24HoursWeekly,
                        isClosedDayWeekly:
                            state.scheduleModel!.isClosedDayWeekly,
                        timeOpenWeekly: state.scheduleModel!.timeOpenWeekly,
                        timeClosedWeekly: state.scheduleModel!.timeClosedWeekly,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.all(AppDimens.basePaddingDouble),
                        child: SizedBox(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.all(
                                    AppDimens.basePaddingHalf,
                                  ),
                                  elevation: 0,
                                  backgroundColor: AppColors.mainWhiteColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {
                                  widget.changeCreateStoreStep(2);
                                },
                                child: Text(
                                  'Kembali',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.dangerColor,
                                      ),
                                ),
                              ),
                              AppSpacing.horizontalSpacing20,
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.all(
                                    AppDimens.basePaddingHalf,
                                  ),
                                  backgroundColor: AppColors.mainColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    isLoadingApi = true;
                                    _setupOperationalHoursScheduleParam(
                                      state.scheduleModel!,
                                    );
                                    context.read<YourStoreBloc>().add(
                                          YourStoreEvent.postCreateStoreRequest(
                                            CreateStorePostRequest(
                                              storeName: state.name,
                                              storeDescription:
                                                  state.description,
                                              address: state.address,
                                              city: '',
                                              state: '',
                                              zipCode: '',
                                              phone: state.phone,
                                              email: userEmail,
                                              website: '',
                                              status: '',
                                              isActive: true,
                                              locationLat: 0,
                                              locationLng: 0,
                                              tags: [],
                                              hours: createNewOperationalHours,
                                              images: _loadStoreImage(
                                                state.imagePath,
                                                state.imageType,
                                                state.imageBase64,
                                              ),
                                            ),
                                          ),
                                        );
                                  });
                                },
                                child: Text(
                                  'Buat Toko',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.mainWhiteColor,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: isLoadingApi,
                  child: Positioned.fill(
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      color: AppColors.disabledColor.withOpacity(0.5),
                      child: const Align(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: isShowSuccessDialog,
                  child: Positioned.fill(
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      color: AppColors.disabledColor.withOpacity(0.5),
                      child: Align(
                        child: Dialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: SizedBox(
                            height: 300,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppSpacing.verticalSpacing20,
                                SizedBox(
                                  width: 36,
                                  height: 36,
                                  child: Image.asset(
                                    'assets/images/checkbox_check.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                SizedBox(
                                  width: 140,
                                  height: 180,
                                  child: Image.asset(
                                    'assets/images/toko_anda_silahkan_buat.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Text(
                                  'Toko Berhasil Dibuat',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.successColor,
                                      ),
                                ),
                                AppSpacing.verticalSpacing20,
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
