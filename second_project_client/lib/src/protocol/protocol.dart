/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'activity.dart' as _i2;
import 'attachment.dart' as _i3;
import 'board.dart' as _i4;
import 'card.dart' as _i5;
import 'checklist.dart' as _i6;
import 'comment.dart' as _i7;
import 'example.dart' as _i8;
import 'list.dart' as _i9;
import 'member.dart' as _i10;
import 'user.dart' as _i11;
import 'workspace.dart' as _i12;
import 'protocol.dart' as _i13;
import 'package:second_project_client/src/protocol/workspace.dart' as _i14;
import 'package:second_project_client/src/protocol/board.dart' as _i15;
export 'activity.dart';
export 'attachment.dart';
export 'board.dart';
export 'card.dart';
export 'checklist.dart';
export 'comment.dart';
export 'example.dart';
export 'list.dart';
export 'member.dart';
export 'user.dart';
export 'workspace.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.Activity) {
      return _i2.Activity.fromJson(data) as T;
    }
    if (t == _i3.Attachment) {
      return _i3.Attachment.fromJson(data) as T;
    }
    if (t == _i4.Board) {
      return _i4.Board.fromJson(data) as T;
    }
    if (t == _i5.Card) {
      return _i5.Card.fromJson(data) as T;
    }
    if (t == _i6.Checklist) {
      return _i6.Checklist.fromJson(data) as T;
    }
    if (t == _i7.Comment) {
      return _i7.Comment.fromJson(data) as T;
    }
    if (t == _i8.Example) {
      return _i8.Example.fromJson(data) as T;
    }
    if (t == _i9.ListBoard) {
      return _i9.ListBoard.fromJson(data) as T;
    }
    if (t == _i10.Member) {
      return _i10.Member.fromJson(data) as T;
    }
    if (t == _i11.User) {
      return _i11.User.fromJson(data) as T;
    }
    if (t == _i12.Workspace) {
      return _i12.Workspace.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Activity?>()) {
      return (data != null ? _i2.Activity.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.Attachment?>()) {
      return (data != null ? _i3.Attachment.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.Board?>()) {
      return (data != null ? _i4.Board.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.Card?>()) {
      return (data != null ? _i5.Card.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.Checklist?>()) {
      return (data != null ? _i6.Checklist.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Comment?>()) {
      return (data != null ? _i7.Comment.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.Example?>()) {
      return (data != null ? _i8.Example.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.ListBoard?>()) {
      return (data != null ? _i9.ListBoard.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.Member?>()) {
      return (data != null ? _i10.Member.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.User?>()) {
      return (data != null ? _i11.User.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.Workspace?>()) {
      return (data != null ? _i12.Workspace.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<List<_i13.Card>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i13.Card>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i13.Member>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i13.Member>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i14.Workspace>) {
      return (data as List).map((e) => deserialize<_i14.Workspace>(e)).toList()
          as dynamic;
    }
    if (t == List<_i15.Board>) {
      return (data as List).map((e) => deserialize<_i15.Board>(e)).toList()
          as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.Activity) {
      return 'Activity';
    }
    if (data is _i3.Attachment) {
      return 'Attachment';
    }
    if (data is _i4.Board) {
      return 'Board';
    }
    if (data is _i5.Card) {
      return 'Card';
    }
    if (data is _i6.Checklist) {
      return 'Checklist';
    }
    if (data is _i7.Comment) {
      return 'Comment';
    }
    if (data is _i8.Example) {
      return 'Example';
    }
    if (data is _i9.ListBoard) {
      return 'ListBoard';
    }
    if (data is _i10.Member) {
      return 'Member';
    }
    if (data is _i11.User) {
      return 'User';
    }
    if (data is _i12.Workspace) {
      return 'Workspace';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Activity') {
      return deserialize<_i2.Activity>(data['data']);
    }
    if (data['className'] == 'Attachment') {
      return deserialize<_i3.Attachment>(data['data']);
    }
    if (data['className'] == 'Board') {
      return deserialize<_i4.Board>(data['data']);
    }
    if (data['className'] == 'Card') {
      return deserialize<_i5.Card>(data['data']);
    }
    if (data['className'] == 'Checklist') {
      return deserialize<_i6.Checklist>(data['data']);
    }
    if (data['className'] == 'Comment') {
      return deserialize<_i7.Comment>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i8.Example>(data['data']);
    }
    if (data['className'] == 'ListBoard') {
      return deserialize<_i9.ListBoard>(data['data']);
    }
    if (data['className'] == 'Member') {
      return deserialize<_i10.Member>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i11.User>(data['data']);
    }
    if (data['className'] == 'Workspace') {
      return deserialize<_i12.Workspace>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
