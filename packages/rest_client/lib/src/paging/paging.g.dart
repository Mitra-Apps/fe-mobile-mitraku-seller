// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paging.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PagingImpl<T> _$$PagingImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$PagingImpl<T>(
      items: (json['items'] as List<dynamic>).map(fromJsonT).toList(),
      totalCount: json['totalCount'] as int?,
      currentCount: json['currentCount'] as int?,
    );

Map<String, dynamic> _$$PagingImplToJson<T>(
  _$PagingImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'items': instance.items.map(toJsonT).toList(),
      'totalCount': instance.totalCount,
      'currentCount': instance.currentCount,
    };
