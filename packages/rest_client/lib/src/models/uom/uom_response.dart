// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'uom_response.freezed.dart';
part 'uom_response.g.dart';

///
@freezed
class UomResponse with _$UomResponse {
  ///
  const factory UomResponse({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'symbol') required String symbol,
    @JsonKey(name: 'isActive') required bool isActive,
  }) = _UomResponse;

  ///
  factory UomResponse.fromJson(Map<String, dynamic> json) => 
  _$UomResponseFromJson(json);
}
