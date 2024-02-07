import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoreScheduleModel {
  StoreScheduleModel({
    required this.isOpen24HoursWeekly,
    required this.isClosedDayWeekly,
    required this.timeOpenWeekly,
    required this.timeClosedWeekly,
  });
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
    this.scheduleModel,
  });
  final String name;
  final String phone;
  final String address;
  final String description;
  final StoreScheduleModel? scheduleModel;

  StoreModel copyWith({
    String? name,
    String? phone,
    String? address,
    String? description,
    StoreScheduleModel? scheduleModel,
  }) {
    return StoreModel(
      name: name ?? this.name,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      description: description ?? this.description,
      scheduleModel: scheduleModel ?? this.scheduleModel,
    );
  }
}

// Define your cubit
class BuatTokoCubit extends Cubit<StoreModel> {
  BuatTokoCubit()
      : super(
          StoreModel(
            name: '',
            phone: '',
            address: '',
            description: '',
            scheduleModel: StoreScheduleModel(
              // Weekly schedule start from monday to sunday
              isOpen24HoursWeekly: [
                false,
                false,
                false,
                false,
                false,
                false,
                false,
              ],
              isClosedDayWeekly: [
                false,
                false,
                false,
                false,
                false,
                false,
                false,
              ],
              timeOpenWeekly: [
                null,
                null,
                null,
                null,
                null,
                null,
                null,
              ],
              timeClosedWeekly: [
                null,
                null,
                null,
                null,
                null,
                null,
                null,
              ],
            ),
          ),
        );

  // Update the state with new values for basic properties
  void updateStoreModel({
    required String name,
    required String phone,
    required String address,
    required String description,
  }) {
    emit(state.copyWith(
      name: name,
      phone: phone,
      address: address,
      description: description,
    ));
  }

  // Update the state with new values for scheduleModel
  void updateStoreScheduleModel({
    required StoreScheduleModel scheduleModel,
  }) {
    emit(state.copyWith(scheduleModel: scheduleModel));
  }
}
