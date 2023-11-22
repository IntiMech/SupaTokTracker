// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CreatorPFPStruct extends BaseStruct {
  CreatorPFPStruct({
    List<String>? pfp,
  }) : _pfp = pfp;

  // "pfp" field.
  List<String>? _pfp;
  List<String> get pfp => _pfp ?? const [];
  set pfp(List<String>? val) => _pfp = val;
  void updatePfp(Function(List<String>) updateFn) => updateFn(_pfp ??= []);
  bool hasPfp() => _pfp != null;

  static CreatorPFPStruct fromMap(Map<String, dynamic> data) =>
      CreatorPFPStruct(
        pfp: getDataList(data['pfp']),
      );

  static CreatorPFPStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? CreatorPFPStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'pfp': _pfp,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'pfp': serializeParam(
          _pfp,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static CreatorPFPStruct fromSerializableMap(Map<String, dynamic> data) =>
      CreatorPFPStruct(
        pfp: deserializeParam<String>(
          data['pfp'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'CreatorPFPStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CreatorPFPStruct && listEquality.equals(pfp, other.pfp);
  }

  @override
  int get hashCode => const ListEquality().hash([pfp]);
}

CreatorPFPStruct createCreatorPFPStruct() => CreatorPFPStruct();
