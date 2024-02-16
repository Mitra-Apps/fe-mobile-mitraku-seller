import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mitraku_seller/core/dimens/app_dimens.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/features/buat_toko/bloc/buat_toko_cubit.dart';
import 'package:mitraku_seller/features/buat_toko/components/buat_toko_step_widget.dart';
import 'package:mitraku_seller/features/buat_toko/components/information_field_widget.dart';
import 'package:mitraku_seller/features/buat_toko/components/unggah_foto_toko_widget.dart';

class BuatTokoInformasiPage extends StatefulWidget {
  const BuatTokoInformasiPage({required this.changeCreateStoreStep, super.key});
  final Function(int) changeCreateStoreStep;

  @override
  State<BuatTokoInformasiPage> createState() => _BuatTokoPage();
}

class _BuatTokoPage extends State<BuatTokoInformasiPage> {
  late BuatTokoCubit buatTokoCubit;
  bool isMandatoryFieldCompleted = false;

  void _updateInputValueCallback(String type, String value) {
    // Access the initial state
    final StoreModel currentState = buatTokoCubit.state;
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
    context.read<BuatTokoCubit>().updateStoreModel(
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
      final StoreModel currentState = buatTokoCubit.state;
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
    buatTokoCubit = context.read<BuatTokoCubit>();
    // Access the initial state
    _checkMandatoryField();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BuatTokoCubit, StoreModel>(
      builder: (BuildContext context, StoreModel state) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSpacing.verticalSpacing20,
              const BuatTokoStepWidget(stepNumber: 1),
              AppSpacing.verticalSpacing20,
              BuatTokoFieldWidget(
                widgetType: 'NAMA_TOKO',
                value: state.name,
                updateInputValueCallback: _updateInputValueCallback,
              ),
              BuatTokoFieldWidget(
                widgetType: 'NO_TELP',
                value: state.phone.replaceFirst('62', ''),
                updateInputValueCallback: _updateInputValueCallback,
              ),
              BuatTokoFieldWidget(
                widgetType: 'ALAMAT_TOKO',
                value: state.address,
                updateInputValueCallback: _updateInputValueCallback,
              ),
              BuatTokoFieldWidget(
                widgetType: 'DESKRIPSI_TOKO',
                value: state.description,
                updateInputValueCallback: _updateInputValueCallback,
              ),
              BuatTokoUnggahFotoWidget(
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
