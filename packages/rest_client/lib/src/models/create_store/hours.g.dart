// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hours.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HoursImpl _$$HoursImplFromJson(Map<String, dynamic> json) => _$HoursImpl(
      id: json['id'] as String?,
      storeId: json['storeId'] as String?,
      dayOfWeek: json['dayOfWeek'] as int?,
      open: json['open'] as String?,
      close: json['close'] as String?,
    );

Map<String, dynamic> _$$HoursImplToJson(_$HoursImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'storeId': instance.storeId,
      'dayOfWeek': instance.dayOfWeek,
      'open': instance.open,
      'close': instance.close,
    };
