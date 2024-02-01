// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';

part 'hours.freezed.dart';
part 'hours.g.dart';

@freezed
class Hours with _$Hours {
  const factory Hours({
    String? id,
    String? storeId,
    int? dayOfWeek,
    String? open,
    String? close,
  }) = _Hours;

  factory Hours.fromJson(Map<String, dynamic> json) => _$HoursFromJson(json);
}
