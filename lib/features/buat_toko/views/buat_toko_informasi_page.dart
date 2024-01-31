import 'package:flutter/material.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
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
  bool isMandatoryFieldCompleted = false;
  String inputNama = '';
  String inputNoTelp = '';
  String inputAlamatToko = '';
  String inputDeskripsi = '';

  void _updateInputValueCallback(String type, String value) {
    setState(() {
      switch (type) {
        case 'NAMA_TOKO':
          inputNama = value;
        case 'NO_TELP':
          inputNoTelp = value;
        case 'ALAMAT_TOKO':
          inputAlamatToko = value;
        case 'DESKRIPSI_TOKO':
          inputDeskripsi = value;
      }
      if (inputNama.isNotEmpty &&
          inputNoTelp.isNotEmpty &&
          inputAlamatToko.isNotEmpty &&
          inputDeskripsi.isNotEmpty) {
        isMandatoryFieldCompleted = true;
      } else {
        isMandatoryFieldCompleted = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppSpacing.verticalSpacing20,
          const BuatTokoStepWidget(stepNumber: 1),
          AppSpacing.verticalSpacing20,
          BuatTokoFieldWidget(
            widgetType: 'NAMA_TOKO',
            updateInputValueCallback: _updateInputValueCallback,
          ),
          BuatTokoFieldWidget(
            widgetType: 'NO_TELP',
            updateInputValueCallback: _updateInputValueCallback,
          ),
          BuatTokoFieldWidget(
            widgetType: 'ALAMAT_TOKO',
            updateInputValueCallback: _updateInputValueCallback,
          ),
          BuatTokoFieldWidget(
            widgetType: 'DESKRIPSI_TOKO',
            updateInputValueCallback: _updateInputValueCallback,
          ),
          BuatTokoUnggahFotoWidget(),
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
  }
}
