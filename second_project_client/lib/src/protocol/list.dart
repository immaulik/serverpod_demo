/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class ListBoard implements _i1.SerializableModel {
  ListBoard._({
    this.id,
    required this.boardId,
    required this.userId,
    required this.name,
    this.archived,
    this.cards,
  });

  factory ListBoard({
    int? id,
    required int boardId,
    required int userId,
    required String name,
    bool? archived,
    List<_i2.Card>? cards,
  }) = _ListBoardImpl;

  factory ListBoard.fromJson(Map<String, dynamic> jsonSerialization) {
    return ListBoard(
      id: jsonSerialization['id'] as int?,
      boardId: jsonSerialization['boardId'] as int,
      userId: jsonSerialization['userId'] as int,
      name: jsonSerialization['name'] as String,
      archived: jsonSerialization['archived'] as bool?,
      cards: (jsonSerialization['cards'] as List?)
          ?.map((e) => _i2.Card.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int boardId;

  int userId;

  String name;

  bool? archived;

  List<_i2.Card>? cards;

  ListBoard copyWith({
    int? id,
    int? boardId,
    int? userId,
    String? name,
    bool? archived,
    List<_i2.Card>? cards,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'boardId': boardId,
      'userId': userId,
      'name': name,
      if (archived != null) 'archived': archived,
      if (cards != null) 'cards': cards?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ListBoardImpl extends ListBoard {
  _ListBoardImpl({
    int? id,
    required int boardId,
    required int userId,
    required String name,
    bool? archived,
    List<_i2.Card>? cards,
  }) : super._(
          id: id,
          boardId: boardId,
          userId: userId,
          name: name,
          archived: archived,
          cards: cards,
        );

  @override
  ListBoard copyWith({
    Object? id = _Undefined,
    int? boardId,
    int? userId,
    String? name,
    Object? archived = _Undefined,
    Object? cards = _Undefined,
  }) {
    return ListBoard(
      id: id is int? ? id : this.id,
      boardId: boardId ?? this.boardId,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      archived: archived is bool? ? archived : this.archived,
      cards: cards is List<_i2.Card>? ? cards : this.cards?.clone(),
    );
  }
}
