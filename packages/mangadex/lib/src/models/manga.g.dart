// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MangaListResponse _$$_MangaListResponseFromJson(Map<String, dynamic> json) =>
    _$_MangaListResponse(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => MangaData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MangaData>[],
      limit: json['limit'] as int? ?? 0,
      offset: json['offset'] as int? ?? 0,
      total: json['total'] as int? ?? 0,
    );

Map<String, dynamic> _$$_MangaListResponseToJson(
        _$_MangaListResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'limit': instance.limit,
      'offset': instance.offset,
      'total': instance.total,
    };

_$_MangaResponse _$$_MangaResponseFromJson(Map<String, dynamic> json) =>
    _$_MangaResponse(
      data: MangaData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MangaResponseToJson(_$_MangaResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_MangaData _$$_MangaDataFromJson(Map<String, dynamic> json) => _$_MangaData(
      id: json['id'] as String,
      attributes:
          MangaAttributes.fromJson(json['attributes'] as Map<String, dynamic>),
      relationships: (json['relationships'] as List<dynamic>?)
              ?.map((e) => const RelationshipConverter()
                  .fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Relationship>[],
    );

Map<String, dynamic> _$$_MangaDataToJson(_$_MangaData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
      'relationships': instance.relationships
          .map(const RelationshipConverter().toJson)
          .toList(),
    };

_$_MangaAttributes _$$_MangaAttributesFromJson(Map<String, dynamic> json) =>
    _$_MangaAttributes(
      title: Map<String, String>.from(json['title'] as Map),
      altTitles: (json['altTitles'] as List<dynamic>)
          .map((e) => Map<String, String>.from(e as Map))
          .toList(),
      description: Map<String, String>.from(json['description'] as Map),
      originalLanguage: json['originalLanguage'] as String?,
      lastVolume: json['lastVolume'] as String?,
      lastChapter: json['lastChapter'] as String?,
      contentRating:
          $enumDecodeNullable(_$ContentRatingEnumMap, json['contentRating']),
      publicationDemographic: $enumDecodeNullable(
          _$PublicationDemographicEnumMap, json['publicationDemographic']),
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']),
      tags: (json['tags'] as List<dynamic>)
          .map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MangaAttributesToJson(_$_MangaAttributes instance) =>
    <String, dynamic>{
      'title': instance.title,
      'altTitles': instance.altTitles,
      'description': instance.description,
      'originalLanguage': instance.originalLanguage,
      'lastVolume': instance.lastVolume,
      'lastChapter': instance.lastChapter,
      'contentRating': _$ContentRatingEnumMap[instance.contentRating],
      'publicationDemographic':
          _$PublicationDemographicEnumMap[instance.publicationDemographic],
      'status': _$StatusEnumMap[instance.status],
      'tags': instance.tags,
    };

const _$ContentRatingEnumMap = {
  ContentRating.safe: 'safe',
  ContentRating.suggestive: 'suggestive',
  ContentRating.erotica: 'erotica',
  ContentRating.pornographic: 'pornographic',
};

const _$PublicationDemographicEnumMap = {
  PublicationDemographic.none: 'none',
  PublicationDemographic.shounen: 'shounen',
  PublicationDemographic.shoujo: 'shoujo',
  PublicationDemographic.josei: 'josei',
  PublicationDemographic.seinen: 'seinen',
};

const _$StatusEnumMap = {
  Status.ongoing: 'ongoing',
  Status.completed: 'completed',
  Status.hiatus: 'hiatus',
  Status.cancelled: 'cancelled',
};

_$_Tag _$$_TagFromJson(Map<String, dynamic> json) => _$_Tag(
      id: json['id'] as String? ?? '',
      attributes:
          TagAttributes.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TagToJson(_$_Tag instance) => <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

_$_TagAttributes _$$_TagAttributesFromJson(Map<String, dynamic> json) =>
    _$_TagAttributes(
      name: Map<String, String>.from(json['name'] as Map),
      group: json['group'] as String,
    );

Map<String, dynamic> _$$_TagAttributesToJson(_$_TagAttributes instance) =>
    <String, dynamic>{
      'name': instance.name,
      'group': instance.group,
    };
