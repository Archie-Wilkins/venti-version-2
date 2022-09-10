// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Event.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetEventCollection on Isar {
  IsarCollection<Event> get events => getCollection();
}

const EventSchema = CollectionSchema(
  name: 'Event',
  schema:
      '{"name":"Event","idName":"id","properties":[{"name":"attendeeAttendingCount","type":"Long"},{"name":"attendeeCount","type":"Long"},{"name":"attendeeNotAttendingCount","type":"Long"},{"name":"attendeeNotRespondedCount","type":"Long"},{"name":"description","type":"String"},{"name":"endDateTime","type":"String"},{"name":"linkToEvent","type":"String"},{"name":"location","type":"String"},{"name":"startDateTime","type":"String"},{"name":"title","type":"String"}],"indexes":[],"links":[{"name":"attendees","target":"Attendee"}]}',
  idName: 'id',
  propertyIds: {
    'attendeeAttendingCount': 0,
    'attendeeCount': 1,
    'attendeeNotAttendingCount': 2,
    'attendeeNotRespondedCount': 3,
    'description': 4,
    'endDateTime': 5,
    'linkToEvent': 6,
    'location': 7,
    'startDateTime': 8,
    'title': 9
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {'attendees': 0},
  backlinkLinkNames: {},
  getId: _eventGetId,
  setId: _eventSetId,
  getLinks: _eventGetLinks,
  attachLinks: _eventAttachLinks,
  serializeNative: _eventSerializeNative,
  deserializeNative: _eventDeserializeNative,
  deserializePropNative: _eventDeserializePropNative,
  serializeWeb: _eventSerializeWeb,
  deserializeWeb: _eventDeserializeWeb,
  deserializePropWeb: _eventDeserializePropWeb,
  version: 3,
);

int? _eventGetId(Event object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _eventSetId(Event object, int id) {
  object.id = id;
}

List<IsarLinkBase> _eventGetLinks(Event object) {
  return [object.attendees];
}

void _eventSerializeNative(
    IsarCollection<Event> collection,
    IsarRawObject rawObj,
    Event object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.attendeeAttendingCount;
  final _attendeeAttendingCount = value0;
  final value1 = object.attendeeCount;
  final _attendeeCount = value1;
  final value2 = object.attendeeNotAttendingCount;
  final _attendeeNotAttendingCount = value2;
  final value3 = object.attendeeNotRespondedCount;
  final _attendeeNotRespondedCount = value3;
  final value4 = object.description;
  IsarUint8List? _description;
  if (value4 != null) {
    _description = IsarBinaryWriter.utf8Encoder.convert(value4);
  }
  dynamicSize += (_description?.length ?? 0) as int;
  final value5 = object.endDateTime;
  IsarUint8List? _endDateTime;
  if (value5 != null) {
    _endDateTime = IsarBinaryWriter.utf8Encoder.convert(value5);
  }
  dynamicSize += (_endDateTime?.length ?? 0) as int;
  final value6 = object.linkToEvent;
  final _linkToEvent = IsarBinaryWriter.utf8Encoder.convert(value6);
  dynamicSize += (_linkToEvent.length) as int;
  final value7 = object.location;
  final _location = IsarBinaryWriter.utf8Encoder.convert(value7);
  dynamicSize += (_location.length) as int;
  final value8 = object.startDateTime;
  final _startDateTime = IsarBinaryWriter.utf8Encoder.convert(value8);
  dynamicSize += (_startDateTime.length) as int;
  final value9 = object.title;
  final _title = IsarBinaryWriter.utf8Encoder.convert(value9);
  dynamicSize += (_title.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeLong(offsets[0], _attendeeAttendingCount);
  writer.writeLong(offsets[1], _attendeeCount);
  writer.writeLong(offsets[2], _attendeeNotAttendingCount);
  writer.writeLong(offsets[3], _attendeeNotRespondedCount);
  writer.writeBytes(offsets[4], _description);
  writer.writeBytes(offsets[5], _endDateTime);
  writer.writeBytes(offsets[6], _linkToEvent);
  writer.writeBytes(offsets[7], _location);
  writer.writeBytes(offsets[8], _startDateTime);
  writer.writeBytes(offsets[9], _title);
}

Event _eventDeserializeNative(IsarCollection<Event> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Event(
    id,
    reader.readString(offsets[9]),
    reader.readStringOrNull(offsets[4]),
    reader.readString(offsets[7]),
    reader.readString(offsets[8]),
    reader.readStringOrNull(offsets[5]),
    reader.readString(offsets[6]),
    reader.readLong(offsets[1]),
    reader.readLong(offsets[0]),
    reader.readLong(offsets[2]),
    reader.readLong(offsets[3]),
  );
  _eventAttachLinks(collection, id, object);
  return object;
}

P _eventDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _eventSerializeWeb(IsarCollection<Event> collection, Event object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(
      jsObj, 'attendeeAttendingCount', object.attendeeAttendingCount);
  IsarNative.jsObjectSet(jsObj, 'attendeeCount', object.attendeeCount);
  IsarNative.jsObjectSet(
      jsObj, 'attendeeNotAttendingCount', object.attendeeNotAttendingCount);
  IsarNative.jsObjectSet(
      jsObj, 'attendeeNotRespondedCount', object.attendeeNotRespondedCount);
  IsarNative.jsObjectSet(jsObj, 'description', object.description);
  IsarNative.jsObjectSet(jsObj, 'endDateTime', object.endDateTime);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'linkToEvent', object.linkToEvent);
  IsarNative.jsObjectSet(jsObj, 'location', object.location);
  IsarNative.jsObjectSet(jsObj, 'startDateTime', object.startDateTime);
  IsarNative.jsObjectSet(jsObj, 'title', object.title);
  return jsObj;
}

Event _eventDeserializeWeb(IsarCollection<Event> collection, dynamic jsObj) {
  final object = Event(
    IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity,
    IsarNative.jsObjectGet(jsObj, 'title') ?? '',
    IsarNative.jsObjectGet(jsObj, 'description'),
    IsarNative.jsObjectGet(jsObj, 'location') ?? '',
    IsarNative.jsObjectGet(jsObj, 'startDateTime') ?? '',
    IsarNative.jsObjectGet(jsObj, 'endDateTime'),
    IsarNative.jsObjectGet(jsObj, 'linkToEvent') ?? '',
    IsarNative.jsObjectGet(jsObj, 'attendeeCount') ?? double.negativeInfinity,
    IsarNative.jsObjectGet(jsObj, 'attendeeAttendingCount') ??
        double.negativeInfinity,
    IsarNative.jsObjectGet(jsObj, 'attendeeNotAttendingCount') ??
        double.negativeInfinity,
    IsarNative.jsObjectGet(jsObj, 'attendeeNotRespondedCount') ??
        double.negativeInfinity,
  );
  _eventAttachLinks(collection,
      IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity, object);
  return object;
}

P _eventDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'attendeeAttendingCount':
      return (IsarNative.jsObjectGet(jsObj, 'attendeeAttendingCount') ??
          double.negativeInfinity) as P;
    case 'attendeeCount':
      return (IsarNative.jsObjectGet(jsObj, 'attendeeCount') ??
          double.negativeInfinity) as P;
    case 'attendeeNotAttendingCount':
      return (IsarNative.jsObjectGet(jsObj, 'attendeeNotAttendingCount') ??
          double.negativeInfinity) as P;
    case 'attendeeNotRespondedCount':
      return (IsarNative.jsObjectGet(jsObj, 'attendeeNotRespondedCount') ??
          double.negativeInfinity) as P;
    case 'description':
      return (IsarNative.jsObjectGet(jsObj, 'description')) as P;
    case 'endDateTime':
      return (IsarNative.jsObjectGet(jsObj, 'endDateTime')) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
          as P;
    case 'linkToEvent':
      return (IsarNative.jsObjectGet(jsObj, 'linkToEvent') ?? '') as P;
    case 'location':
      return (IsarNative.jsObjectGet(jsObj, 'location') ?? '') as P;
    case 'startDateTime':
      return (IsarNative.jsObjectGet(jsObj, 'startDateTime') ?? '') as P;
    case 'title':
      return (IsarNative.jsObjectGet(jsObj, 'title') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _eventAttachLinks(IsarCollection col, int id, Event object) {
  object.attendees.attach(col, col.isar.attendees, 'attendees', id);
}

extension EventQueryWhereSort on QueryBuilder<Event, Event, QWhere> {
  QueryBuilder<Event, Event, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension EventQueryWhere on QueryBuilder<Event, Event, QWhereClause> {
  QueryBuilder<Event, Event, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<Event, Event, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Event, Event, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<Event, Event, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<Event, Event, QAfterWhereClause> idBetween(
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

extension EventQueryFilter on QueryBuilder<Event, Event, QFilterCondition> {
  QueryBuilder<Event, Event, QAfterFilterCondition>
      attendeeAttendingCountEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'attendeeAttendingCount',
      value: value,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      attendeeAttendingCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'attendeeAttendingCount',
      value: value,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      attendeeAttendingCountLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'attendeeAttendingCount',
      value: value,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      attendeeAttendingCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'attendeeAttendingCount',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> attendeeCountEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'attendeeCount',
      value: value,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> attendeeCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'attendeeCount',
      value: value,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> attendeeCountLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'attendeeCount',
      value: value,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> attendeeCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'attendeeCount',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      attendeeNotAttendingCountEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'attendeeNotAttendingCount',
      value: value,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      attendeeNotAttendingCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'attendeeNotAttendingCount',
      value: value,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      attendeeNotAttendingCountLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'attendeeNotAttendingCount',
      value: value,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      attendeeNotAttendingCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'attendeeNotAttendingCount',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      attendeeNotRespondedCountEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'attendeeNotRespondedCount',
      value: value,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      attendeeNotRespondedCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'attendeeNotRespondedCount',
      value: value,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      attendeeNotRespondedCountLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'attendeeNotRespondedCount',
      value: value,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      attendeeNotRespondedCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'attendeeNotRespondedCount',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'description',
      value: null,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionGreaterThan(
    String? value, {
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

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionLessThan(
    String? value, {
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

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionStartsWith(
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

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionEndsWith(
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

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'description',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> endDateTimeIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'endDateTime',
      value: null,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> endDateTimeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'endDateTime',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> endDateTimeGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'endDateTime',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> endDateTimeLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'endDateTime',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> endDateTimeBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'endDateTime',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> endDateTimeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'endDateTime',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> endDateTimeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'endDateTime',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> endDateTimeContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'endDateTime',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> endDateTimeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'endDateTime',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Event, Event, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Event, Event, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Event, Event, QAfterFilterCondition> linkToEventEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'linkToEvent',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> linkToEventGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'linkToEvent',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> linkToEventLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'linkToEvent',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> linkToEventBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'linkToEvent',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> linkToEventStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'linkToEvent',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> linkToEventEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'linkToEvent',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> linkToEventContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'linkToEvent',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> linkToEventMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'linkToEvent',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'location',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'location',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'location',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'location',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'location',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'location',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'location',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> locationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'location',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> startDateTimeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'startDateTime',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> startDateTimeGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'startDateTime',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> startDateTimeLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'startDateTime',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> startDateTimeBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'startDateTime',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> startDateTimeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'startDateTime',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> startDateTimeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'startDateTime',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> startDateTimeContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'startDateTime',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> startDateTimeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'startDateTime',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> titleLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'title',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> titleContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> titleMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'title',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension EventQueryLinks on QueryBuilder<Event, Event, QFilterCondition> {
  QueryBuilder<Event, Event, QAfterFilterCondition> attendees(
      FilterQuery<Attendee> q) {
    return linkInternal(
      isar.attendees,
      q,
      'attendees',
    );
  }
}

extension EventQueryWhereSortBy on QueryBuilder<Event, Event, QSortBy> {
  QueryBuilder<Event, Event, QAfterSortBy> sortByAttendeeAttendingCount() {
    return addSortByInternal('attendeeAttendingCount', Sort.asc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByAttendeeAttendingCountDesc() {
    return addSortByInternal('attendeeAttendingCount', Sort.desc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByAttendeeCount() {
    return addSortByInternal('attendeeCount', Sort.asc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByAttendeeCountDesc() {
    return addSortByInternal('attendeeCount', Sort.desc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByAttendeeNotAttendingCount() {
    return addSortByInternal('attendeeNotAttendingCount', Sort.asc);
  }

  QueryBuilder<Event, Event, QAfterSortBy>
      sortByAttendeeNotAttendingCountDesc() {
    return addSortByInternal('attendeeNotAttendingCount', Sort.desc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByAttendeeNotRespondedCount() {
    return addSortByInternal('attendeeNotRespondedCount', Sort.asc);
  }

  QueryBuilder<Event, Event, QAfterSortBy>
      sortByAttendeeNotRespondedCountDesc() {
    return addSortByInternal('attendeeNotRespondedCount', Sort.desc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByEndDateTime() {
    return addSortByInternal('endDateTime', Sort.asc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByEndDateTimeDesc() {
    return addSortByInternal('endDateTime', Sort.desc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByLinkToEvent() {
    return addSortByInternal('linkToEvent', Sort.asc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByLinkToEventDesc() {
    return addSortByInternal('linkToEvent', Sort.desc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByLocation() {
    return addSortByInternal('location', Sort.asc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByLocationDesc() {
    return addSortByInternal('location', Sort.desc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByStartDateTime() {
    return addSortByInternal('startDateTime', Sort.asc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByStartDateTimeDesc() {
    return addSortByInternal('startDateTime', Sort.desc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByTitle() {
    return addSortByInternal('title', Sort.asc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByTitleDesc() {
    return addSortByInternal('title', Sort.desc);
  }
}

extension EventQueryWhereSortThenBy on QueryBuilder<Event, Event, QSortThenBy> {
  QueryBuilder<Event, Event, QAfterSortBy> thenByAttendeeAttendingCount() {
    return addSortByInternal('attendeeAttendingCount', Sort.asc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByAttendeeAttendingCountDesc() {
    return addSortByInternal('attendeeAttendingCount', Sort.desc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByAttendeeCount() {
    return addSortByInternal('attendeeCount', Sort.asc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByAttendeeCountDesc() {
    return addSortByInternal('attendeeCount', Sort.desc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByAttendeeNotAttendingCount() {
    return addSortByInternal('attendeeNotAttendingCount', Sort.asc);
  }

  QueryBuilder<Event, Event, QAfterSortBy>
      thenByAttendeeNotAttendingCountDesc() {
    return addSortByInternal('attendeeNotAttendingCount', Sort.desc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByAttendeeNotRespondedCount() {
    return addSortByInternal('attendeeNotRespondedCount', Sort.asc);
  }

  QueryBuilder<Event, Event, QAfterSortBy>
      thenByAttendeeNotRespondedCountDesc() {
    return addSortByInternal('attendeeNotRespondedCount', Sort.desc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByEndDateTime() {
    return addSortByInternal('endDateTime', Sort.asc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByEndDateTimeDesc() {
    return addSortByInternal('endDateTime', Sort.desc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByLinkToEvent() {
    return addSortByInternal('linkToEvent', Sort.asc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByLinkToEventDesc() {
    return addSortByInternal('linkToEvent', Sort.desc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByLocation() {
    return addSortByInternal('location', Sort.asc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByLocationDesc() {
    return addSortByInternal('location', Sort.desc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByStartDateTime() {
    return addSortByInternal('startDateTime', Sort.asc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByStartDateTimeDesc() {
    return addSortByInternal('startDateTime', Sort.desc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByTitle() {
    return addSortByInternal('title', Sort.asc);
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByTitleDesc() {
    return addSortByInternal('title', Sort.desc);
  }
}

extension EventQueryWhereDistinct on QueryBuilder<Event, Event, QDistinct> {
  QueryBuilder<Event, Event, QDistinct> distinctByAttendeeAttendingCount() {
    return addDistinctByInternal('attendeeAttendingCount');
  }

  QueryBuilder<Event, Event, QDistinct> distinctByAttendeeCount() {
    return addDistinctByInternal('attendeeCount');
  }

  QueryBuilder<Event, Event, QDistinct> distinctByAttendeeNotAttendingCount() {
    return addDistinctByInternal('attendeeNotAttendingCount');
  }

  QueryBuilder<Event, Event, QDistinct> distinctByAttendeeNotRespondedCount() {
    return addDistinctByInternal('attendeeNotRespondedCount');
  }

  QueryBuilder<Event, Event, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('description', caseSensitive: caseSensitive);
  }

  QueryBuilder<Event, Event, QDistinct> distinctByEndDateTime(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('endDateTime', caseSensitive: caseSensitive);
  }

  QueryBuilder<Event, Event, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Event, Event, QDistinct> distinctByLinkToEvent(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('linkToEvent', caseSensitive: caseSensitive);
  }

  QueryBuilder<Event, Event, QDistinct> distinctByLocation(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('location', caseSensitive: caseSensitive);
  }

  QueryBuilder<Event, Event, QDistinct> distinctByStartDateTime(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('startDateTime', caseSensitive: caseSensitive);
  }

  QueryBuilder<Event, Event, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('title', caseSensitive: caseSensitive);
  }
}

extension EventQueryProperty on QueryBuilder<Event, Event, QQueryProperty> {
  QueryBuilder<Event, int, QQueryOperations> attendeeAttendingCountProperty() {
    return addPropertyNameInternal('attendeeAttendingCount');
  }

  QueryBuilder<Event, int, QQueryOperations> attendeeCountProperty() {
    return addPropertyNameInternal('attendeeCount');
  }

  QueryBuilder<Event, int, QQueryOperations>
      attendeeNotAttendingCountProperty() {
    return addPropertyNameInternal('attendeeNotAttendingCount');
  }

  QueryBuilder<Event, int, QQueryOperations>
      attendeeNotRespondedCountProperty() {
    return addPropertyNameInternal('attendeeNotRespondedCount');
  }

  QueryBuilder<Event, String?, QQueryOperations> descriptionProperty() {
    return addPropertyNameInternal('description');
  }

  QueryBuilder<Event, String?, QQueryOperations> endDateTimeProperty() {
    return addPropertyNameInternal('endDateTime');
  }

  QueryBuilder<Event, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Event, String, QQueryOperations> linkToEventProperty() {
    return addPropertyNameInternal('linkToEvent');
  }

  QueryBuilder<Event, String, QQueryOperations> locationProperty() {
    return addPropertyNameInternal('location');
  }

  QueryBuilder<Event, String, QQueryOperations> startDateTimeProperty() {
    return addPropertyNameInternal('startDateTime');
  }

  QueryBuilder<Event, String, QQueryOperations> titleProperty() {
    return addPropertyNameInternal('title');
  }
}
