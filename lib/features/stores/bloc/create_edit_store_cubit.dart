import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoreScheduleModel {
  StoreScheduleModel(
    this.hourIdWeekly,
    this.hourStoreIdWeekly,
    this.dayOfWeekly, {
    required this.isOpen24HoursWeekly,
    required this.isClosedDayWeekly,
    required this.timeOpenWeekly,
    required this.timeClosedWeekly,
  });
  List<String> hourIdWeekly = [];
  List<String> hourStoreIdWeekly = [];
  List<int> dayOfWeekly = [];
  List<bool> isOpen24HoursWeekly;
  List<bool> isClosedDayWeekly;
  List<TimeOfDay?> timeOpenWeekly;
  List<TimeOfDay?> timeClosedWeekly;
}

class StoreModel {
  StoreModel({
    required this.name,
    required this.phone,
    required this.address,
    required this.description,
    this.imagePath = '',
    this.imageType = '',
    this.imageBase64 = '',
    this.scheduleModel,
  });
  factory StoreModel.defaultStore() {
    return StoreModel(
      name: '',
      phone: '',
      address: '',
      description: '',
      scheduleModel: StoreScheduleModel(
        List.filled(7, ''),
        List.filled(7, ''),
        [0, 1, 2, 3, 4, 5, 6],
        isOpen24HoursWeekly: List.filled(7, false),
        isClosedDayWeekly: List.filled(7, false),
        timeOpenWeekly: List.filled(7, null),
        timeClosedWeekly: List.filled(7, null),
      ),
    );
  }
  final String name;
  final String phone;
  final String address;
  final String description;
  final String imagePath;
  final String imageType;
  final String imageBase64;
  final StoreScheduleModel? scheduleModel;

  StoreModel copyWith({
    String? name,
    String? phone,
    String? address,
    String? description,
    String? imagePath,
    String? imageType,
    String? imageBase64,
    StoreScheduleModel? scheduleModel,
  }) {
    return StoreModel(
      name: name ?? this.name,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      description: description ?? this.description,
      imagePath: imagePath ?? this.imagePath,
      imageType: imageType ?? this.imageType,
      imageBase64: imageBase64 ?? this.imageBase64,
      scheduleModel: scheduleModel ?? this.scheduleModel,
    );
  }
}

// Define your cubit
class CreateEditStoreCubit extends Cubit<StoreModel> {
  CreateEditStoreCubit()
      : super(
          StoreModel(
            name: '',
            phone: '',
            address: '',
            description: '',
            scheduleModel: StoreScheduleModel(
              // Weekly schedule start from monday to sunday
              List.filled(7, ''),
              List.filled(7, ''),
              [0, 1, 2, 3, 4, 5, 6],
              isOpen24HoursWeekly: List.filled(7, false),
              isClosedDayWeekly: List.filled(7, false),
              timeOpenWeekly: List.filled(7, null),
              timeClosedWeekly: List.filled(7, null),
            ),
          ),
        );

  // Update the state with new values for basic properties
  void updateStoreModel({
    required String name,
    required String phone,
    required String address,
    required String description,
    String? imagePath,
    String? imageType,
    String? imageBase64,
  }) {
    emit(state.copyWith(
      name: name,
      phone: phone,
      address: address,
      description: description,
      imagePath: imagePath,
      imageType: imageType,
      imageBase64: imageBase64,
    ));
  }

  // Update the state with new values for scheduleModel
  void updateStoreScheduleModel({
    required StoreScheduleModel scheduleModel,
  }) {
    emit(state.copyWith(scheduleModel: scheduleModel));
  }
}
