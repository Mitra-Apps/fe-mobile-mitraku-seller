import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
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

class EditStoreSummaryPage extends StatefulWidget {
  const EditStoreSummaryPage({
    required this.changeEditStoreStep,
    super.key,
  });
  final Function(int) changeEditStoreStep;

  @override
  State<EditStoreSummaryPage> createState() => _EditStoreSummaryPage();
}

class _EditStoreSummaryPage extends State<EditStoreSummaryPage> {
  late FToast fToast;
  bool isLoadingApi = false;
  bool isShowSuccessDialog = false;
  late String userEmail = '';
  late List<Hour> currentOperationalHours = [];

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    // if you want to use context from globally instead of content we need to pass navigatorKey.currentContext!
    fToast.init(context);
  }

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

  List<ImageStore> _loadStoreImage(
    MyStoreResponse myStoreResponse,
    String currentImagePath,
    String currentImageType,
    String currentImageBase64,
  ) {
    final List<ImageStore> previousImage = myStoreResponse.images;
    if (previousImage.isNotEmpty) {
      if (previousImage.first.imageUrl == currentImageType) {
        return previousImage;
      } else {
        if (currentImagePath.isNotEmpty &&
            currentImageType.isNotEmpty &&
            currentImageBase64.isNotEmpty) {
          return [
            ImageStore(
              id: previousImage.first.id,
              storeId: myStoreResponse.id,
              imageType: currentImageType,
              imageUrl: previousImage.first.imageUrl,
              imageBase64: currentImageBase64,
            ),
          ];
        } else {
          return [];
        }
      }
    } else {
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
  }

  void _setupOperationalHoursScheduleParam(StoreScheduleModel schedule) {
    for (int dayIndex = 0; dayIndex < 7; dayIndex++) {
      currentOperationalHours.add(
        Hour(
          id: schedule.hourIdWeekly[dayIndex],
          storeId: schedule.hourStoreIdWeekly[dayIndex],
          dayOfWeek: dayIndex,
          open: schedule.timeOpenWeekly[dayIndex] != null
              ? _formatTimeOfDay(schedule.timeOpenWeekly[dayIndex]!)
              : '00:00',
          close: schedule.timeClosedWeekly[dayIndex] != null
              ? _formatTimeOfDay(schedule.timeClosedWeekly[dayIndex]!)
              : '23:59',
          is24Hours: schedule.isClosedDayWeekly[dayIndex] == true
              ? !schedule.isClosedDayWeekly[dayIndex]
              : schedule.isOpen24HoursWeekly[dayIndex],
          isOpen: !schedule.isClosedDayWeekly[dayIndex],
        ),
      );
    }
  }

  void _showToastFailed(String message) {
    final Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.dangerColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset('assets/icons/icon_white_close.svg'),
          const SizedBox(
            width: 12,
          ),
          Text(
            message,
            style: const TextStyle(
              fontSize: 8,
              fontWeight: FontWeight.normal,
              color: AppColors.mainWhiteColor,
            ),
          ),
        ],
      ),
    );

    fToast.showToast(
      child: toast,
      gravity: ToastGravity.TOP,
      toastDuration: const Duration(seconds: 3),
    );
  }

  @override
  Widget build(BuildContext context) {
    _loadEmailPreferences();
    return BlocConsumer<CreateEditStoreCubit, StoreModel>(
      listener: (context, state) async {},
      builder: (BuildContext context, StoreModel state) {
        return BlocConsumer<YourStoreBloc, YourStoreState>(
          listener: (context, state) async {
            if (mounted) {
              state.notification?.when(
                notifySuccess: (message) {
                  setState(() {
                    isLoadingApi = false;
                    isShowSuccessDialog = true;
                    Future.delayed(const Duration(seconds: 3), () {
                      if (mounted) {
                        widget.changeEditStoreStep(200);
                      }
                    });
                  });
                },
                notifyFailed: (message) {
                  setState(() {
                    isLoadingApi = false;
                  });
                  _showToastFailed('Gagal mengubah toko, mohon coba kembali.');
                },
              );
            }
          },
          builder: (context, yourStoreState) {
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
                                  widget.changeEditStoreStep(2);
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
                                          YourStoreEvent.putEditStoreRequest(
                                            storeId: yourStoreState
                                                .myStoreResponse!.id,
                                            editStorePutRequest:
                                                EditStorePutRequest(
                                              id: yourStoreState
                                                  .myStoreResponse!.id,
                                              userId: yourStoreState
                                                  .myStoreResponse!.userId,
                                              storeName: state.name,
                                              storeDescription:
                                                  state.description,
                                              address: state.address,
                                              city: yourStoreState
                                                  .myStoreResponse!.city,
                                              state: yourStoreState
                                                  .myStoreResponse!.state,
                                              zipCode: yourStoreState
                                                  .myStoreResponse!.zipCode,
                                              phone: state.phone,
                                              email: userEmail,
                                              website: yourStoreState
                                                  .myStoreResponse!.website,
                                              status: yourStoreState
                                                  .myStoreResponse!.status,
                                              isActive: true,
                                              locationLat: yourStoreState
                                                  .myStoreResponse!.locationLat,
                                              locationLng: yourStoreState
                                                  .myStoreResponse!.locationLng,
                                              tags: yourStoreState
                                                  .myStoreResponse!.tags,
                                              hours: currentOperationalHours,
                                              images: _loadStoreImage(
                                                yourStoreState.myStoreResponse!,
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
                                  'Ubah Toko',
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
                                  'Toko Berhasil Diubah',
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
