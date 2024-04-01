import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mitraku_seller/core/dimens/app_dimens.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/features/stores/bloc/create_edit_store_cubit.dart';
import 'package:mitraku_seller/features/stores/components/create_store_image_upload_widget.dart';
import 'package:mitraku_seller/features/stores/components/create_store_information_widget.dart';
import 'package:mitraku_seller/features/stores/components/create_store_step_widget.dart';

class EditStoreInformationPage extends StatefulWidget {
  const EditStoreInformationPage(
      {required this.changeCreateStoreStep, super.key});
  final Function(int) changeCreateStoreStep;

  @override
  State<EditStoreInformationPage> createState() => _EditStoreInformationPage();
}

class _EditStoreInformationPage extends State<EditStoreInformationPage> {
  late CreateEditStoreCubit editStoreCubit;
  bool isMandatoryFieldCompleted = false;

  void _updateInputValueCallback(String type, String value) {
    // Access the initial state
    final StoreModel currentState = editStoreCubit.state;
    String inputNama = currentState.name;
    String inputNoTelp = currentState.phone;
    String inputAlamatToko = currentState.address;
    String inputDeskripsi = currentState.description;
    String inputFoto = currentState.imagePath;
    switch (type) {
      case 'NAMA_TOKO':
        inputNama = value;
      case 'NO_TELP':
        inputNoTelp = value;
      case 'ALAMAT_TOKO':
        inputAlamatToko = value;
      case 'DESKRIPSI_TOKO':
        inputDeskripsi = value;
      case 'FOTO':
        inputFoto = value;
    }
    context.read<CreateEditStoreCubit>().updateStoreModel(
          name: inputNama,
          phone: inputNoTelp,
          address: inputAlamatToko,
          description: inputDeskripsi,
          imagePath: inputFoto,
        );
    _checkMandatoryField();
  }

  void _checkMandatoryField() {
    setState(() {
      final StoreModel currentState = editStoreCubit.state;
      if (currentState.name.isNotEmpty &&
          currentState.phone.isNotEmpty &&
          currentState.address.isNotEmpty &&
          currentState.description.isNotEmpty) {
        isMandatoryFieldCompleted = true;
      } else {
        isMandatoryFieldCompleted = false;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    // Access the UserCubit using context.read in initState
    editStoreCubit = context.read<CreateEditStoreCubit>();
    // Access the initial state
    _checkMandatoryField();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateEditStoreCubit, StoreModel>(
      builder: (BuildContext context, StoreModel state) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSpacing.verticalSpacing20,
              const CreateStoreStepWidget(stepNumber: 1),
              AppSpacing.verticalSpacing20,
              CreateStoreInformationWidget(
                widgetType: 'NAMA_TOKO',
                value: state.name,
                updateInputValueCallback: _updateInputValueCallback,
              ),
              CreateStoreInformationWidget(
                widgetType: 'NO_TELP',
                value: state.phone.replaceFirst('62', ''),
                updateInputValueCallback: _updateInputValueCallback,
              ),
              CreateStoreInformationWidget(
                widgetType: 'ALAMAT_TOKO',
                value: state.address,
                updateInputValueCallback: _updateInputValueCallback,
              ),
              CreateStoreInformationWidget(
                widgetType: 'DESKRIPSI_TOKO',
                value: state.description,
                updateInputValueCallback: _updateInputValueCallback,
              ),
              CreateStoreImageUploadWidget(
                  existingImagePath: state.imagePath,
                  updateInputValueCallback: _updateInputValueCallback),
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
                      widget.changeCreateStoreStep(0);
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
                        widget.changeCreateStoreStep(2);
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
