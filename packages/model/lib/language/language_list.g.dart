// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LanguageListImpl _$$LanguageListImplFromJson(Map<String, dynamic> json) =>
    _$LanguageListImpl(
      defaultLanguage: json['default_language'] as String,
      languageList: (json['language_list'] as List<dynamic>)
          .map((e) => LanguageItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      languages:
          (json['languages'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$LanguageListImplToJson(_$LanguageListImpl instance) =>
    <String, dynamic>{
      'default_language': instance.defaultLanguage,
      'language_list': instance.languageList,
      'languages': instance.languages,
    };
