// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'openRoomEntityIsar.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetOpenRoomCollection on Isar {
  IsarCollection<OpenRoom> get openRooms => getCollection();
}

const OpenRoomSchema = CollectionSchema(
  name: 'OpenRoom',
  schema:
      '{"name":"OpenRoom","idName":"id","properties":[{"name":"categoryDocId","type":"String"},{"name":"createUserDocId","type":"String"},{"name":"deleteFlg","type":"Bool"},{"name":"description","type":"String"},{"name":"endDateTime","type":"Long"},{"name":"insertProgramId","type":"String"},{"name":"insertTime","type":"Long"},{"name":"insertUserDocId","type":"String"},{"name":"joinUserNumber","type":"Long"},{"name":"openRoomDocId","type":"String"},{"name":"readableFlg","type":"Bool"},{"name":"roomName","type":"String"},{"name":"startDateTime","type":"Long"},{"name":"topicDocId","type":"String"},{"name":"updateProgramId","type":"String"},{"name":"updateTime","type":"Long"},{"name":"updateUserDocId","type":"String"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'categoryDocId': 0,
    'createUserDocId': 1,
    'deleteFlg': 2,
    'description': 3,
    'endDateTime': 4,
    'insertProgramId': 5,
    'insertTime': 6,
    'insertUserDocId': 7,
    'joinUserNumber': 8,
    'openRoomDocId': 9,
    'readableFlg': 10,
    'roomName': 11,
    'startDateTime': 12,
    'topicDocId': 13,
    'updateProgramId': 14,
    'updateTime': 15,
    'updateUserDocId': 16
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _openRoomGetId,
  setId: _openRoomSetId,
  getLinks: _openRoomGetLinks,
  attachLinks: _openRoomAttachLinks,
  serializeNative: _openRoomSerializeNative,
  deserializeNative: _openRoomDeserializeNative,
  deserializePropNative: _openRoomDeserializePropNative,
  serializeWeb: _openRoomSerializeWeb,
  deserializeWeb: _openRoomDeserializeWeb,
  deserializePropWeb: _openRoomDeserializePropWeb,
  version: 3,
);

int? _openRoomGetId(OpenRoom object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _openRoomSetId(OpenRoom object, int id) {
  object.id = id;
}

List<IsarLinkBase> _openRoomGetLinks(OpenRoom object) {
  return [];
}

void _openRoomSerializeNative(
    IsarCollection<OpenRoom> collection,
    IsarRawObject rawObj,
    OpenRoom object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.categoryDocId;
  final _categoryDocId = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_categoryDocId.length) as int;
  final value1 = object.createUserDocId;
  final _createUserDocId = IsarBinaryWriter.utf8Encoder.convert(value1);
  dynamicSize += (_createUserDocId.length) as int;
  final value2 = object.deleteFlg;
  final _deleteFlg = value2;
  final value3 = object.description;
  final _description = IsarBinaryWriter.utf8Encoder.convert(value3);
  dynamicSize += (_description.length) as int;
  final value4 = object.endDateTime;
  final _endDateTime = value4;
  final value5 = object.insertProgramId;
  final _insertProgramId = IsarBinaryWriter.utf8Encoder.convert(value5);
  dynamicSize += (_insertProgramId.length) as int;
  final value6 = object.insertTime;
  final _insertTime = value6;
  final value7 = object.insertUserDocId;
  final _insertUserDocId = IsarBinaryWriter.utf8Encoder.convert(value7);
  dynamicSize += (_insertUserDocId.length) as int;
  final value8 = object.joinUserNumber;
  final _joinUserNumber = value8;
  final value9 = object.openRoomDocId;
  final _openRoomDocId = IsarBinaryWriter.utf8Encoder.convert(value9);
  dynamicSize += (_openRoomDocId.length) as int;
  final value10 = object.readableFlg;
  final _readableFlg = value10;
  final value11 = object.roomName;
  final _roomName = IsarBinaryWriter.utf8Encoder.convert(value11);
  dynamicSize += (_roomName.length) as int;
  final value12 = object.startDateTime;
  final _startDateTime = value12;
  final value13 = object.topicDocId;
  final _topicDocId = IsarBinaryWriter.utf8Encoder.convert(value13);
  dynamicSize += (_topicDocId.length) as int;
  final value14 = object.updateProgramId;
  final _updateProgramId = IsarBinaryWriter.utf8Encoder.convert(value14);
  dynamicSize += (_updateProgramId.length) as int;
  final value15 = object.updateTime;
  final _updateTime = value15;
  final value16 = object.updateUserDocId;
  final _updateUserDocId = IsarBinaryWriter.utf8Encoder.convert(value16);
  dynamicSize += (_updateUserDocId.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _categoryDocId);
  writer.writeBytes(offsets[1], _createUserDocId);
  writer.writeBool(offsets[2], _deleteFlg);
  writer.writeBytes(offsets[3], _description);
  writer.writeDateTime(offsets[4], _endDateTime);
  writer.writeBytes(offsets[5], _insertProgramId);
  writer.writeDateTime(offsets[6], _insertTime);
  writer.writeBytes(offsets[7], _insertUserDocId);
  writer.writeLong(offsets[8], _joinUserNumber);
  writer.writeBytes(offsets[9], _openRoomDocId);
  writer.writeBool(offsets[10], _readableFlg);
  writer.writeBytes(offsets[11], _roomName);
  writer.writeDateTime(offsets[12], _startDateTime);
  writer.writeBytes(offsets[13], _topicDocId);
  writer.writeBytes(offsets[14], _updateProgramId);
  writer.writeDateTime(offsets[15], _updateTime);
  writer.writeBytes(offsets[16], _updateUserDocId);
}

OpenRoom _openRoomDeserializeNative(IsarCollection<OpenRoom> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = OpenRoom(
    reader.readString(offsets[9]),
    reader.readString(offsets[1]),
    reader.readString(offsets[11]),
    reader.readString(offsets[0]),
    reader.readString(offsets[13]),
    reader.readString(offsets[3]),
    reader.readDateTime(offsets[12]),
    reader.readDateTimeOrNull(offsets[4]),
    reader.readLong(offsets[8]),
    reader.readString(offsets[7]),
    reader.readString(offsets[5]),
    reader.readDateTime(offsets[6]),
    reader.readString(offsets[16]),
    reader.readString(offsets[14]),
    reader.readDateTime(offsets[15]),
    reader.readBool(offsets[10]),
    reader.readBool(offsets[2]),
  );
  object.id = id;
  return object;
}

P _openRoomDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readDateTime(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readBool(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readDateTime(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readDateTime(offset)) as P;
    case 16:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _openRoomSerializeWeb(
    IsarCollection<OpenRoom> collection, OpenRoom object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'categoryDocId', object.categoryDocId);
  IsarNative.jsObjectSet(jsObj, 'createUserDocId', object.createUserDocId);
  IsarNative.jsObjectSet(jsObj, 'deleteFlg', object.deleteFlg);
  IsarNative.jsObjectSet(jsObj, 'description', object.description);
  IsarNative.jsObjectSet(
      jsObj, 'endDateTime', object.endDateTime?.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'insertProgramId', object.insertProgramId);
  IsarNative.jsObjectSet(
      jsObj, 'insertTime', object.insertTime.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'insertUserDocId', object.insertUserDocId);
  IsarNative.jsObjectSet(jsObj, 'joinUserNumber', object.joinUserNumber);
  IsarNative.jsObjectSet(jsObj, 'openRoomDocId', object.openRoomDocId);
  IsarNative.jsObjectSet(jsObj, 'readableFlg', object.readableFlg);
  IsarNative.jsObjectSet(jsObj, 'roomName', object.roomName);
  IsarNative.jsObjectSet(jsObj, 'startDateTime',
      object.startDateTime.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'topicDocId', object.topicDocId);
  IsarNative.jsObjectSet(jsObj, 'updateProgramId', object.updateProgramId);
  IsarNative.jsObjectSet(
      jsObj, 'updateTime', object.updateTime.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'updateUserDocId', object.updateUserDocId);
  return jsObj;
}

OpenRoom _openRoomDeserializeWeb(
    IsarCollection<OpenRoom> collection, dynamic jsObj) {
  final object = OpenRoom(
    IsarNative.jsObjectGet(jsObj, 'openRoomDocId') ?? '',
    IsarNative.jsObjectGet(jsObj, 'createUserDocId') ?? '',
    IsarNative.jsObjectGet(jsObj, 'roomName') ?? '',
    IsarNative.jsObjectGet(jsObj, 'categoryDocId') ?? '',
    IsarNative.jsObjectGet(jsObj, 'topicDocId') ?? '',
    IsarNative.jsObjectGet(jsObj, 'description') ?? '',
    IsarNative.jsObjectGet(jsObj, 'startDateTime') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'startDateTime'),
                isUtc: true)
            .toLocal()
        : DateTime.fromMillisecondsSinceEpoch(0),
    IsarNative.jsObjectGet(jsObj, 'endDateTime') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'endDateTime'),
                isUtc: true)
            .toLocal()
        : null,
    IsarNative.jsObjectGet(jsObj, 'joinUserNumber') ?? double.negativeInfinity,
    IsarNative.jsObjectGet(jsObj, 'insertUserDocId') ?? '',
    IsarNative.jsObjectGet(jsObj, 'insertProgramId') ?? '',
    IsarNative.jsObjectGet(jsObj, 'insertTime') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'insertTime'),
                isUtc: true)
            .toLocal()
        : DateTime.fromMillisecondsSinceEpoch(0),
    IsarNative.jsObjectGet(jsObj, 'updateUserDocId') ?? '',
    IsarNative.jsObjectGet(jsObj, 'updateProgramId') ?? '',
    IsarNative.jsObjectGet(jsObj, 'updateTime') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'updateTime'),
                isUtc: true)
            .toLocal()
        : DateTime.fromMillisecondsSinceEpoch(0),
    IsarNative.jsObjectGet(jsObj, 'readableFlg') ?? false,
    IsarNative.jsObjectGet(jsObj, 'deleteFlg') ?? false,
  );
  object.id = IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity;
  return object;
}

P _openRoomDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'categoryDocId':
      return (IsarNative.jsObjectGet(jsObj, 'categoryDocId') ?? '') as P;
    case 'createUserDocId':
      return (IsarNative.jsObjectGet(jsObj, 'createUserDocId') ?? '') as P;
    case 'deleteFlg':
      return (IsarNative.jsObjectGet(jsObj, 'deleteFlg') ?? false) as P;
    case 'description':
      return (IsarNative.jsObjectGet(jsObj, 'description') ?? '') as P;
    case 'endDateTime':
      return (IsarNative.jsObjectGet(jsObj, 'endDateTime') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'endDateTime'),
                  isUtc: true)
              .toLocal()
          : null) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
          as P;
    case 'insertProgramId':
      return (IsarNative.jsObjectGet(jsObj, 'insertProgramId') ?? '') as P;
    case 'insertTime':
      return (IsarNative.jsObjectGet(jsObj, 'insertTime') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'insertTime'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    case 'insertUserDocId':
      return (IsarNative.jsObjectGet(jsObj, 'insertUserDocId') ?? '') as P;
    case 'joinUserNumber':
      return (IsarNative.jsObjectGet(jsObj, 'joinUserNumber') ??
          double.negativeInfinity) as P;
    case 'openRoomDocId':
      return (IsarNative.jsObjectGet(jsObj, 'openRoomDocId') ?? '') as P;
    case 'readableFlg':
      return (IsarNative.jsObjectGet(jsObj, 'readableFlg') ?? false) as P;
    case 'roomName':
      return (IsarNative.jsObjectGet(jsObj, 'roomName') ?? '') as P;
    case 'startDateTime':
      return (IsarNative.jsObjectGet(jsObj, 'startDateTime') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'startDateTime'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    case 'topicDocId':
      return (IsarNative.jsObjectGet(jsObj, 'topicDocId') ?? '') as P;
    case 'updateProgramId':
      return (IsarNative.jsObjectGet(jsObj, 'updateProgramId') ?? '') as P;
    case 'updateTime':
      return (IsarNative.jsObjectGet(jsObj, 'updateTime') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'updateTime'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    case 'updateUserDocId':
      return (IsarNative.jsObjectGet(jsObj, 'updateUserDocId') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _openRoomAttachLinks(IsarCollection col, int id, OpenRoom object) {}

extension OpenRoomQueryWhereSort on QueryBuilder<OpenRoom, OpenRoom, QWhere> {
  QueryBuilder<OpenRoom, OpenRoom, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension OpenRoomQueryWhere on QueryBuilder<OpenRoom, OpenRoom, QWhereClause> {
  QueryBuilder<OpenRoom, OpenRoom, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterWhereClause> idNotEqualTo(int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      );
    }
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerId,
      includeLower: includeLower,
      upper: upperId,
      includeUpper: includeUpper,
    ));
  }
}

extension OpenRoomQueryFilter
    on QueryBuilder<OpenRoom, OpenRoom, QFilterCondition> {
  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> categoryDocIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'categoryDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      categoryDocIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'categoryDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> categoryDocIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'categoryDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> categoryDocIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'categoryDocId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      categoryDocIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'categoryDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> categoryDocIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'categoryDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> categoryDocIdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'categoryDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> categoryDocIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'categoryDocId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      createUserDocIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'createUserDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      createUserDocIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'createUserDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      createUserDocIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'createUserDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      createUserDocIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'createUserDocId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      createUserDocIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'createUserDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      createUserDocIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'createUserDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      createUserDocIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'createUserDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      createUserDocIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'createUserDocId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> deleteFlgEqualTo(
      bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'deleteFlg',
      value: value,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      descriptionGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> descriptionLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> descriptionBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'description',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> descriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> descriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'description',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> endDateTimeIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'endDateTime',
      value: null,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> endDateTimeEqualTo(
      DateTime? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'endDateTime',
      value: value,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      endDateTimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'endDateTime',
      value: value,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> endDateTimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'endDateTime',
      value: value,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> endDateTimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'endDateTime',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      insertProgramIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'insertProgramId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      insertProgramIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'insertProgramId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      insertProgramIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'insertProgramId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      insertProgramIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'insertProgramId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      insertProgramIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'insertProgramId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      insertProgramIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'insertProgramId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      insertProgramIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'insertProgramId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      insertProgramIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'insertProgramId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> insertTimeEqualTo(
      DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'insertTime',
      value: value,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> insertTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'insertTime',
      value: value,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> insertTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'insertTime',
      value: value,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> insertTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'insertTime',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      insertUserDocIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'insertUserDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      insertUserDocIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'insertUserDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      insertUserDocIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'insertUserDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      insertUserDocIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'insertUserDocId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      insertUserDocIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'insertUserDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      insertUserDocIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'insertUserDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      insertUserDocIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'insertUserDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      insertUserDocIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'insertUserDocId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> joinUserNumberEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'joinUserNumber',
      value: value,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      joinUserNumberGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'joinUserNumber',
      value: value,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      joinUserNumberLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'joinUserNumber',
      value: value,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> joinUserNumberBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'joinUserNumber',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> openRoomDocIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'openRoomDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      openRoomDocIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'openRoomDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> openRoomDocIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'openRoomDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> openRoomDocIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'openRoomDocId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      openRoomDocIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'openRoomDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> openRoomDocIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'openRoomDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> openRoomDocIdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'openRoomDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> openRoomDocIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'openRoomDocId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> readableFlgEqualTo(
      bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'readableFlg',
      value: value,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> roomNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'roomName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> roomNameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'roomName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> roomNameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'roomName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> roomNameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'roomName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> roomNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'roomName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> roomNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'roomName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> roomNameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'roomName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> roomNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'roomName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> startDateTimeEqualTo(
      DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'startDateTime',
      value: value,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      startDateTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'startDateTime',
      value: value,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> startDateTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'startDateTime',
      value: value,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> startDateTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'startDateTime',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> topicDocIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'topicDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> topicDocIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'topicDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> topicDocIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'topicDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> topicDocIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'topicDocId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> topicDocIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'topicDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> topicDocIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'topicDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> topicDocIdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'topicDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> topicDocIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'topicDocId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      updateProgramIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'updateProgramId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      updateProgramIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'updateProgramId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      updateProgramIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'updateProgramId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      updateProgramIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'updateProgramId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      updateProgramIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'updateProgramId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      updateProgramIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'updateProgramId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      updateProgramIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'updateProgramId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      updateProgramIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'updateProgramId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> updateTimeEqualTo(
      DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'updateTime',
      value: value,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> updateTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'updateTime',
      value: value,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> updateTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'updateTime',
      value: value,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition> updateTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'updateTime',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      updateUserDocIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'updateUserDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      updateUserDocIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'updateUserDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      updateUserDocIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'updateUserDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      updateUserDocIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'updateUserDocId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      updateUserDocIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'updateUserDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      updateUserDocIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'updateUserDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      updateUserDocIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'updateUserDocId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterFilterCondition>
      updateUserDocIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'updateUserDocId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension OpenRoomQueryLinks
    on QueryBuilder<OpenRoom, OpenRoom, QFilterCondition> {}

extension OpenRoomQueryWhereSortBy
    on QueryBuilder<OpenRoom, OpenRoom, QSortBy> {
  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByCategoryDocId() {
    return addSortByInternal('categoryDocId', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByCategoryDocIdDesc() {
    return addSortByInternal('categoryDocId', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByCreateUserDocId() {
    return addSortByInternal('createUserDocId', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByCreateUserDocIdDesc() {
    return addSortByInternal('createUserDocId', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByDeleteFlg() {
    return addSortByInternal('deleteFlg', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByDeleteFlgDesc() {
    return addSortByInternal('deleteFlg', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByEndDateTime() {
    return addSortByInternal('endDateTime', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByEndDateTimeDesc() {
    return addSortByInternal('endDateTime', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByInsertProgramId() {
    return addSortByInternal('insertProgramId', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByInsertProgramIdDesc() {
    return addSortByInternal('insertProgramId', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByInsertTime() {
    return addSortByInternal('insertTime', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByInsertTimeDesc() {
    return addSortByInternal('insertTime', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByInsertUserDocId() {
    return addSortByInternal('insertUserDocId', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByInsertUserDocIdDesc() {
    return addSortByInternal('insertUserDocId', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByJoinUserNumber() {
    return addSortByInternal('joinUserNumber', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByJoinUserNumberDesc() {
    return addSortByInternal('joinUserNumber', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByOpenRoomDocId() {
    return addSortByInternal('openRoomDocId', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByOpenRoomDocIdDesc() {
    return addSortByInternal('openRoomDocId', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByReadableFlg() {
    return addSortByInternal('readableFlg', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByReadableFlgDesc() {
    return addSortByInternal('readableFlg', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByRoomName() {
    return addSortByInternal('roomName', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByRoomNameDesc() {
    return addSortByInternal('roomName', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByStartDateTime() {
    return addSortByInternal('startDateTime', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByStartDateTimeDesc() {
    return addSortByInternal('startDateTime', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByTopicDocId() {
    return addSortByInternal('topicDocId', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByTopicDocIdDesc() {
    return addSortByInternal('topicDocId', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByUpdateProgramId() {
    return addSortByInternal('updateProgramId', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByUpdateProgramIdDesc() {
    return addSortByInternal('updateProgramId', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByUpdateTime() {
    return addSortByInternal('updateTime', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByUpdateTimeDesc() {
    return addSortByInternal('updateTime', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByUpdateUserDocId() {
    return addSortByInternal('updateUserDocId', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> sortByUpdateUserDocIdDesc() {
    return addSortByInternal('updateUserDocId', Sort.desc);
  }
}

extension OpenRoomQueryWhereSortThenBy
    on QueryBuilder<OpenRoom, OpenRoom, QSortThenBy> {
  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByCategoryDocId() {
    return addSortByInternal('categoryDocId', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByCategoryDocIdDesc() {
    return addSortByInternal('categoryDocId', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByCreateUserDocId() {
    return addSortByInternal('createUserDocId', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByCreateUserDocIdDesc() {
    return addSortByInternal('createUserDocId', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByDeleteFlg() {
    return addSortByInternal('deleteFlg', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByDeleteFlgDesc() {
    return addSortByInternal('deleteFlg', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByEndDateTime() {
    return addSortByInternal('endDateTime', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByEndDateTimeDesc() {
    return addSortByInternal('endDateTime', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByInsertProgramId() {
    return addSortByInternal('insertProgramId', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByInsertProgramIdDesc() {
    return addSortByInternal('insertProgramId', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByInsertTime() {
    return addSortByInternal('insertTime', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByInsertTimeDesc() {
    return addSortByInternal('insertTime', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByInsertUserDocId() {
    return addSortByInternal('insertUserDocId', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByInsertUserDocIdDesc() {
    return addSortByInternal('insertUserDocId', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByJoinUserNumber() {
    return addSortByInternal('joinUserNumber', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByJoinUserNumberDesc() {
    return addSortByInternal('joinUserNumber', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByOpenRoomDocId() {
    return addSortByInternal('openRoomDocId', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByOpenRoomDocIdDesc() {
    return addSortByInternal('openRoomDocId', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByReadableFlg() {
    return addSortByInternal('readableFlg', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByReadableFlgDesc() {
    return addSortByInternal('readableFlg', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByRoomName() {
    return addSortByInternal('roomName', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByRoomNameDesc() {
    return addSortByInternal('roomName', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByStartDateTime() {
    return addSortByInternal('startDateTime', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByStartDateTimeDesc() {
    return addSortByInternal('startDateTime', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByTopicDocId() {
    return addSortByInternal('topicDocId', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByTopicDocIdDesc() {
    return addSortByInternal('topicDocId', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByUpdateProgramId() {
    return addSortByInternal('updateProgramId', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByUpdateProgramIdDesc() {
    return addSortByInternal('updateProgramId', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByUpdateTime() {
    return addSortByInternal('updateTime', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByUpdateTimeDesc() {
    return addSortByInternal('updateTime', Sort.desc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByUpdateUserDocId() {
    return addSortByInternal('updateUserDocId', Sort.asc);
  }

  QueryBuilder<OpenRoom, OpenRoom, QAfterSortBy> thenByUpdateUserDocIdDesc() {
    return addSortByInternal('updateUserDocId', Sort.desc);
  }
}

extension OpenRoomQueryWhereDistinct
    on QueryBuilder<OpenRoom, OpenRoom, QDistinct> {
  QueryBuilder<OpenRoom, OpenRoom, QDistinct> distinctByCategoryDocId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('categoryDocId', caseSensitive: caseSensitive);
  }

  QueryBuilder<OpenRoom, OpenRoom, QDistinct> distinctByCreateUserDocId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('createUserDocId',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<OpenRoom, OpenRoom, QDistinct> distinctByDeleteFlg() {
    return addDistinctByInternal('deleteFlg');
  }

  QueryBuilder<OpenRoom, OpenRoom, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('description', caseSensitive: caseSensitive);
  }

  QueryBuilder<OpenRoom, OpenRoom, QDistinct> distinctByEndDateTime() {
    return addDistinctByInternal('endDateTime');
  }

  QueryBuilder<OpenRoom, OpenRoom, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<OpenRoom, OpenRoom, QDistinct> distinctByInsertProgramId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('insertProgramId',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<OpenRoom, OpenRoom, QDistinct> distinctByInsertTime() {
    return addDistinctByInternal('insertTime');
  }

  QueryBuilder<OpenRoom, OpenRoom, QDistinct> distinctByInsertUserDocId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('insertUserDocId',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<OpenRoom, OpenRoom, QDistinct> distinctByJoinUserNumber() {
    return addDistinctByInternal('joinUserNumber');
  }

  QueryBuilder<OpenRoom, OpenRoom, QDistinct> distinctByOpenRoomDocId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('openRoomDocId', caseSensitive: caseSensitive);
  }

  QueryBuilder<OpenRoom, OpenRoom, QDistinct> distinctByReadableFlg() {
    return addDistinctByInternal('readableFlg');
  }

  QueryBuilder<OpenRoom, OpenRoom, QDistinct> distinctByRoomName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('roomName', caseSensitive: caseSensitive);
  }

  QueryBuilder<OpenRoom, OpenRoom, QDistinct> distinctByStartDateTime() {
    return addDistinctByInternal('startDateTime');
  }

  QueryBuilder<OpenRoom, OpenRoom, QDistinct> distinctByTopicDocId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('topicDocId', caseSensitive: caseSensitive);
  }

  QueryBuilder<OpenRoom, OpenRoom, QDistinct> distinctByUpdateProgramId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('updateProgramId',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<OpenRoom, OpenRoom, QDistinct> distinctByUpdateTime() {
    return addDistinctByInternal('updateTime');
  }

  QueryBuilder<OpenRoom, OpenRoom, QDistinct> distinctByUpdateUserDocId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('updateUserDocId',
        caseSensitive: caseSensitive);
  }
}

extension OpenRoomQueryProperty
    on QueryBuilder<OpenRoom, OpenRoom, QQueryProperty> {
  QueryBuilder<OpenRoom, String, QQueryOperations> categoryDocIdProperty() {
    return addPropertyNameInternal('categoryDocId');
  }

  QueryBuilder<OpenRoom, String, QQueryOperations> createUserDocIdProperty() {
    return addPropertyNameInternal('createUserDocId');
  }

  QueryBuilder<OpenRoom, bool, QQueryOperations> deleteFlgProperty() {
    return addPropertyNameInternal('deleteFlg');
  }

  QueryBuilder<OpenRoom, String, QQueryOperations> descriptionProperty() {
    return addPropertyNameInternal('description');
  }

  QueryBuilder<OpenRoom, DateTime?, QQueryOperations> endDateTimeProperty() {
    return addPropertyNameInternal('endDateTime');
  }

  QueryBuilder<OpenRoom, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<OpenRoom, String, QQueryOperations> insertProgramIdProperty() {
    return addPropertyNameInternal('insertProgramId');
  }

  QueryBuilder<OpenRoom, DateTime, QQueryOperations> insertTimeProperty() {
    return addPropertyNameInternal('insertTime');
  }

  QueryBuilder<OpenRoom, String, QQueryOperations> insertUserDocIdProperty() {
    return addPropertyNameInternal('insertUserDocId');
  }

  QueryBuilder<OpenRoom, int, QQueryOperations> joinUserNumberProperty() {
    return addPropertyNameInternal('joinUserNumber');
  }

  QueryBuilder<OpenRoom, String, QQueryOperations> openRoomDocIdProperty() {
    return addPropertyNameInternal('openRoomDocId');
  }

  QueryBuilder<OpenRoom, bool, QQueryOperations> readableFlgProperty() {
    return addPropertyNameInternal('readableFlg');
  }

  QueryBuilder<OpenRoom, String, QQueryOperations> roomNameProperty() {
    return addPropertyNameInternal('roomName');
  }

  QueryBuilder<OpenRoom, DateTime, QQueryOperations> startDateTimeProperty() {
    return addPropertyNameInternal('startDateTime');
  }

  QueryBuilder<OpenRoom, String, QQueryOperations> topicDocIdProperty() {
    return addPropertyNameInternal('topicDocId');
  }

  QueryBuilder<OpenRoom, String, QQueryOperations> updateProgramIdProperty() {
    return addPropertyNameInternal('updateProgramId');
  }

  QueryBuilder<OpenRoom, DateTime, QQueryOperations> updateTimeProperty() {
    return addPropertyNameInternal('updateTime');
  }

  QueryBuilder<OpenRoom, String, QQueryOperations> updateUserDocIdProperty() {
    return addPropertyNameInternal('updateUserDocId');
  }
}
