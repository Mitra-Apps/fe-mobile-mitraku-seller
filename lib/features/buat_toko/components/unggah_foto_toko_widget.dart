import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mitraku_seller/core/dimens/app_dimens.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';

class BuatTokoUnggahFotoWidget extends StatefulWidget {
  const BuatTokoUnggahFotoWidget({super.key});

  @override
  State<BuatTokoUnggahFotoWidget> createState() =>
      _BuatTokoUnggahFotoWidgetState();
}

class _BuatTokoUnggahFotoWidgetState extends State<BuatTokoUnggahFotoWidget> {
  bool isPickImageButtonVisible = false;
  File? _imageFile;

  void _togglePickImageVisibility() {
    setState(() {
      isPickImageButtonVisible = !isPickImageButtonVisible;
    });
  }

  Future<void> _pickImage() async {
    final XFile? pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      // Do something with the picked image file
      // For example, display it in an Image widget
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSpacing.verticalSpacing10,
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppDimens.basePaddingDouble),
          child: Row(
            children: [
              Text(
                'Unggah Foto Toko',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                ' ( Opsional )',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.disabledColor),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppDimens.basePaddingDouble,
              vertical: AppDimens.basePadding),
          child: ElevatedButton(
            onPressed:
                _imageFile == null ? _pickImage : _togglePickImageVisibility,
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
              backgroundColor: AppColors.disabledLightColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ), // Remove the padding
            ),
            child: SizedBox(
              width: double.infinity,
              height: 160,
              child: _imageFile != null
                  ? Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.file(
                          File(_imageFile!.path),
                          width: double.infinity,
                          height: 160,
                        ),
                        if (isPickImageButtonVisible)
                          Container(
                            width: double.infinity,
                            color: AppColors.mainBlackColor.withOpacity(0.5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    side: BorderSide(
                                        color: AppColors.mainWhiteColor),
                                    minimumSize: const Size(160, 40),
                                  ),
                                  onPressed: _pickImage,
                                  child: Text(
                                    'Ganti Foto',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.mainWhiteColor,
                                        ),
                                  ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.dangerColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    minimumSize: const Size(160, 40),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _imageFile = null;
                                    });
                                    // context.push(AppRouter.imagesFromDbPath);
                                  },
                                  child: Text(
                                    'Hapus Foto',
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
                          )
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/icons/icon_upload.svg',
                            height: 60, width: 60),
                        AppSpacing.verticalSpacing10,
                        Text(
                          'Silakan Masukkan Foto',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.disabledColor),
                        ),
                      ],
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
