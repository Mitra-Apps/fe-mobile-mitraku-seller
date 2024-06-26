import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mitraku_seller/core/dimens/app_dimens.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';

class CreateStoreImageUploadWidget extends StatefulWidget {
  const CreateStoreImageUploadWidget({
    required this.updateInputValueCallback,
    this.existingImagePath = '',
    super.key,
  });
  final String existingImagePath;
  final Function(String, String) updateInputValueCallback;

  @override
  State<CreateStoreImageUploadWidget> createState() =>
      _CreateStoreImageUploadWidgetState();
}

class _CreateStoreImageUploadWidgetState
    extends State<CreateStoreImageUploadWidget> {
  bool isPickImageButtonVisible = false;
  String _imageUrl = '';
  File? _imageFile;

  void _togglePickImageVisibility() {
    setState(() {
      isPickImageButtonVisible = !isPickImageButtonVisible;
    });
  }

  void _showSnackbar(BuildContext context, String text) {
    final snackBar = SnackBar(
      content: Text(text),
      duration: const Duration(seconds: 5),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  bool _isValidUrl(String url) {
    // Regular expression to check if the string is a valid URL
    final RegExp urlRegExp = RegExp(
      r'^(https?|ftp):\/\/[^\s\/$.?#].[^\s]*$',
    );
    return urlRegExp.hasMatch(url);
  }

  Future<String> _imageToBase64(File imageFile) async {
    final List<int> imageBytes = await imageFile.readAsBytes();
    final String base64Image = base64Encode(imageBytes);
    return base64Image;
  }

  Future<void> _pickImage() async {
    const maxFileSizeInBytes = 2 * 1048576;
    final XFile? pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile!.path.endsWith('png') ||
        pickedFile.path.endsWith('jpg') ||
        pickedFile.path.endsWith('jpeg')) {
      String imageType = '';
      if (pickedFile.path.endsWith('png')) {
        imageType = 'image/png';
      } else if (pickedFile.path.endsWith('jpg')) {
        imageType = 'image/jpg';
      } else if (pickedFile.path.endsWith('jpeg')) {
        imageType = 'image/jpeg';
      }
      // Do something with the picked image file
      // For example, display it in an Image widget
      final imagePath = await pickedFile.readAsBytes();
      final base64Image = await _imageToBase64(File(pickedFile.path));
      final fileSize = imagePath.length; // Get the file size in bytes
      if (fileSize <= maxFileSizeInBytes) {
        // File is the right size, upload/use it
        setState(() {
          _imageUrl = '';
          _imageFile = File(pickedFile.path);
          widget.updateInputValueCallback(
            'FOTO',
            _imageFile!.path,
          );
          widget.updateInputValueCallback(
            'FOTO_TYPE',
            imageType,
          );
          widget.updateInputValueCallback(
            'FOTO_BASE64',
            base64Image,
          );
        });
      } else {
        // File is too large, ask user to upload a smaller file, or compress the file/image
        await Future.delayed(Duration.zero).then(
            (value) => _showSnackbar(context, 'Ukuran gambar maksimum 2 MB'));
      }
    } else {
      await Future.delayed(Duration.zero).then((value) =>
          _showSnackbar(context, 'Hanya mendukung jenis file .png .jpg .jpeg'));
    }
  }

  @override
  void initState() {
    super.initState();
    if (widget.existingImagePath.isNotEmpty) {
      if (_isValidUrl(widget.existingImagePath)) {
        _imageUrl = widget.existingImagePath;
      } else {
        _imageFile = File(widget.existingImagePath);
      }
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
                      color: AppColors.disabledColor,
                    ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimens.basePaddingDouble,
            vertical: AppDimens.basePadding,
          ),
          child: ElevatedButton(
            onPressed: _imageFile == null && _imageUrl.isEmpty
                ? _pickImage
                : _togglePickImageVisibility,
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
              child: _imageFile != null || _imageUrl.isNotEmpty
                  ? Stack(
                      alignment: Alignment.center,
                      children: [
                        if (_imageUrl.isNotEmpty)
                          Image.network(
                            _imageUrl,
                            width: double.infinity,
                            height: 120,
                          )
                        else
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
                                    side: const BorderSide(
                                      color: AppColors.mainWhiteColor,
                                    ),
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
                                      _imageUrl = '';
                                      widget.updateInputValueCallback(
                                        'FOTO',
                                        '',
                                      );
                                      widget.updateInputValueCallback(
                                        'FOTO_TYPE',
                                        '',
                                      );
                                      widget.updateInputValueCallback(
                                        'FOTO_BASE64',
                                        '',
                                      );
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
                          ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/icon_upload.svg',
                          height: 60,
                          width: 60,
                        ),
                        AppSpacing.verticalSpacing10,
                        Text(
                          'Silakan Masukkan Foto',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.disabledColor,
                                  ),
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
