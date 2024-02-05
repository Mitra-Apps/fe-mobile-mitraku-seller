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
              isOpen24HoursWeekly: [],
              isClosedDayWeekly: [],
              timeOpenWeekly: [],
              timeClosedWeekly: [],
            ),
          ),
        );

  // Update the state with new values
  void updateStoreModel({
    required String name,
    required String phone,
    required String address,
    required String description,
  }) {
    emit(
      StoreModel(
        name: name,
        phone: phone,
        address: address,
        description: description,
      ),
    );
  }

  // Update the state with new values
  void updateStoreScheduleModel({
    required StoreScheduleModel scheduleModel,
  }) {
    emit(
      StoreModel(scheduleModel: scheduleModel),
    );
  }
}
