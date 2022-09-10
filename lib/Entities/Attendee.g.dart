// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Attendee.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetAttendeeCollection on Isar {
  IsarCollection<Attendee> get attendees => getCollection();
}

const AttendeeSchema = CollectionSchema(
  name: 'Attendee',
  schema:
      '{"name":"Attendee","idName":"id","properties":[{"name":"message","type":"String"},{"name":"name","type":"String"},{"name":"statusId","type":"String"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {'message': 0, 'name': 1, 'statusId': 2},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _attendeeGetId,
  setId: _attendeeSetId,
  getLinks: _attendeeGetLinks,
  attachLinks: _attendeeAttachLinks,
  serializeNative: _attendeeSerializeNative,
  deserializeNative: _attendeeDeserializeNative,
  deserializePropNative: _attendeeDeserializePropNative,
  serializeWeb: _attendeeSerializeWeb,
  deserializeWeb: _attendeeDeserializeWeb,
  deserializePropWeb: _attendeeDeserializePropWeb,
  version: 3,
);

int? _attendeeGetId(Attendee object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _attendeeSetId(Attendee object, int id) {
  object.id = id;
}

List<IsarLinkBase> _attendeeGetLinks(Attendee object) {
  return [];
}

void _attendeeSerializeNative(
    IsarCollection<Attendee> collection,
    IsarRawObject rawObj,
    Attendee object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.message;
  final _message = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_message.length) as int;
  final value1 = object.name;
  final _name = IsarBinaryWriter.utf8Encoder.convert(value1);
  dynamicSize += (_name.length) as int;
  final value2 = object.statusId;
  final _statusId = IsarBinaryWriter.utf8Encoder.convert(value2);
  dynamicSize += (_statusId.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _message);
  writer.writeBytes(offsets[1], _name);
  writer.writeBytes(offsets[2], _statusId);
}

Attendee _attendeeDeserializeNative(IsarCollection<Attendee> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Attendee(
    id,
    reader.readString(offsets[1]),
    reader.readString(offsets[2]),
    reader.readString(offsets[0]),
  );
  return object;
}

P _attendeeDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _attendeeSerializeWeb(
    IsarCollection<Attendee> collection, Attendee object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'message', object.message);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  IsarNative.jsObjectSet(jsObj, 'statusId', object.statusId);
  return jsObj;
}

Attendee _attendeeDeserializeWeb(
    IsarCollection<Attendee> collection, dynamic jsObj) {
  final object = Attendee(
    IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity,
    IsarNative.jsObjectGet(jsObj, 'name') ?? '',
    IsarNative.jsObjectGet(jsObj, 'statusId') ?? '',
    IsarNative.jsObjectGet(jsObj, 'message') ?? '',
  );
  return object;
}

P _attendeeDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
          as P;
    case 'message':
      return (IsarNative.jsObjectGet(jsObj, 'message') ?? '') as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
    case 'statusId':
      return (IsarNative.jsObjectGet(jsObj, 'statusId') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _attendeeAttachLinks(IsarCollection col, int id, Attendee object) {}

extension AttendeeQueryWhereSort on QueryBuilder<Attendee, Attendee, QWhere> {
  QueryBuilder<Attendee, Attendee, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension AttendeeQueryWhere on QueryBuilder<Attendee, Attendee, QWhereClause> {
  QueryBuilder<Attendee, Attendee, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<Attendee, Attendee, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Attendee, Attendee, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<Attendee, Attendee, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<Attendee, Attendee, QAfterWhereClause> idBetween(
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

extension AttendeeQueryFilter
    on QueryBuilder<Attendee, Attendee, QFilterCondition> {
  QueryBuilder<Attendee, Attendee, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Attendee, Attendee, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Attendee, Attendee, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Attendee, Attendee, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Attendee, Attendee, QAfterFilterCondition> messageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'message',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Attendee, Attendee, QAfterFilterCondition> messageGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'message',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Attendee, Attendee, QAfterFilterCondition> messageLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'message',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Attendee, Attendee, QAfterFilterCondition> messageBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'message',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Attendee, Attendee, QAfterFilterCondition> messageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'message',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Attendee, Attendee, QAfterFilterCondition> messageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'message',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Attendee, Attendee, QAfterFilterCondition> messageContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'message',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Attendee, Attendee, QAfterFilterCondition> messageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'message',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Attendee, Attendee, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Attendee, Attendee, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Attendee, Attendee, QAfterFilterCondition> nameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Attendee, Attendee, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'name',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Attendee, Attendee, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Attendee, Attendee, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Attendee, Attendee, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Attendee, Attendee, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Attendee, Attendee, QAfterFilterCondition> statusIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'statusId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Attendee, Attendee, QAfterFilterCondition> statusIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'statusId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Attendee, Attendee, QAfterFilterCondition> statusIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'statusId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Attendee, Attendee, QAfterFilterCondition> statusIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'statusId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Attendee, Attendee, QAfterFilterCondition> statusIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'statusId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Attendee, Attendee, QAfterFilterCondition> statusIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'statusId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Attendee, Attendee, QAfterFilterCondition> statusIdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'statusId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Attendee, Attendee, QAfterFilterCondition> statusIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'statusId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension AttendeeQueryLinks
    on QueryBuilder<Attendee, Attendee, QFilterCondition> {}

extension AttendeeQueryWhereSortBy
    on QueryBuilder<Attendee, Attendee, QSortBy> {
  QueryBuilder<Attendee, Attendee, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Attendee, Attendee, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Attendee, Attendee, QAfterSortBy> sortByMessage() {
    return addSortByInternal('message', Sort.asc);
  }

  QueryBuilder<Attendee, Attendee, QAfterSortBy> sortByMessageDesc() {
    return addSortByInternal('message', Sort.desc);
  }

  QueryBuilder<Attendee, Attendee, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Attendee, Attendee, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<Attendee, Attendee, QAfterSortBy> sortByStatusId() {
    return addSortByInternal('statusId', Sort.asc);
  }

  QueryBuilder<Attendee, Attendee, QAfterSortBy> sortByStatusIdDesc() {
    return addSortByInternal('statusId', Sort.desc);
  }
}

extension AttendeeQueryWhereSortThenBy
    on QueryBuilder<Attendee, Attendee, QSortThenBy> {
  QueryBuilder<Attendee, Attendee, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Attendee, Attendee, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Attendee, Attendee, QAfterSortBy> thenByMessage() {
    return addSortByInternal('message', Sort.asc);
  }

  QueryBuilder<Attendee, Attendee, QAfterSortBy> thenByMessageDesc() {
    return addSortByInternal('message', Sort.desc);
  }

  QueryBuilder<Attendee, Attendee, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Attendee, Attendee, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<Attendee, Attendee, QAfterSortBy> thenByStatusId() {
    return addSortByInternal('statusId', Sort.asc);
  }

  QueryBuilder<Attendee, Attendee, QAfterSortBy> thenByStatusIdDesc() {
    return addSortByInternal('statusId', Sort.desc);
  }
}

extension AttendeeQueryWhereDistinct
    on QueryBuilder<Attendee, Attendee, QDistinct> {
  QueryBuilder<Attendee, Attendee, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Attendee, Attendee, QDistinct> distinctByMessage(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('message', caseSensitive: caseSensitive);
  }

  QueryBuilder<Attendee, Attendee, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }

  QueryBuilder<Attendee, Attendee, QDistinct> distinctByStatusId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('statusId', caseSensitive: caseSensitive);
  }
}

extension AttendeeQueryProperty
    on QueryBuilder<Attendee, Attendee, QQueryProperty> {
  QueryBuilder<Attendee, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Attendee, String, QQueryOperations> messageProperty() {
    return addPropertyNameInternal('message');
  }

  QueryBuilder<Attendee, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }

  QueryBuilder<Attendee, String, QQueryOperations> statusIdProperty() {
    return addPropertyNameInternal('statusId');
  }
}
