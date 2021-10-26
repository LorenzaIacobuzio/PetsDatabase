// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pets_objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Cat _$$CatFromJson(Map<String, dynamic> json) => _$Cat();

Map<String, dynamic> _$$CatToJson(_$Cat instance) => <String, dynamic>{};

_$Dog _$$DogFromJson(Map<String, dynamic> json) => _$Dog();

Map<String, dynamic> _$$DogToJson(_$Dog instance) => <String, dynamic>{};

_$Snake _$$SnakeFromJson(Map<String, dynamic> json) => _$Snake(
      json['isVenomous'] as bool,
    );

Map<String, dynamic> _$$SnakeToJson(_$Snake instance) => <String, dynamic>{
      'isVenomous': instance.isVenomous,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
};
