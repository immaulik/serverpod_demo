/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:second_project_client/src/protocol/board.dart' as _i3;
import 'package:second_project_client/src/protocol/workspace.dart' as _i4;
import 'package:second_project_client/src/protocol/user.dart' as _i5;
import 'protocol.dart' as _i6;

/// {@category Endpoint}
class EndpointBoard extends _i1.EndpointRef {
  EndpointBoard(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'board';

  _i2.Future<_i3.Board> createBoard(_i3.Board board) =>
      caller.callServerEndpoint<_i3.Board>(
        'board',
        'createBoard',
        {'board': board},
      );

  _i2.Future<bool> updateBoard({required _i3.Board board}) =>
      caller.callServerEndpoint<bool>(
        'board',
        'updateBoard',
        {'board': board},
      );

  _i2.Future<bool> deleteBoard(_i3.Board board) =>
      caller.callServerEndpoint<bool>(
        'board',
        'deleteBoard',
        {'board': board},
      );

  _i2.Future<_i4.Workspace?> getWorkspaceForBoard(_i3.Board board) =>
      caller.callServerEndpoint<_i4.Workspace?>(
        'board',
        'getWorkspaceForBoard',
        {'board': board},
      );
}

/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

/// {@category Endpoint}
class EndpointUser extends _i1.EndpointRef {
  EndpointUser(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'user';

  _i2.Future<_i5.User> createUser(_i5.User user) =>
      caller.callServerEndpoint<_i5.User>(
        'user',
        'createUser',
        {'user': user},
      );

  _i2.Future<_i5.User?> getUserById(int userId) =>
      caller.callServerEndpoint<_i5.User?>(
        'user',
        'getUserById',
        {'userId': userId},
      );
}

/// {@category Endpoint}
class EndpointWorkspace extends _i1.EndpointRef {
  EndpointWorkspace(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'workspace';

  _i2.Future<_i4.Workspace> createWorkspace(_i4.Workspace workspace) =>
      caller.callServerEndpoint<_i4.Workspace>(
        'workspace',
        'createWorkspace',
        {'workspace': workspace},
      );

  _i2.Future<List<_i4.Workspace>> getWorkspaceByUser({required int userId}) =>
      caller.callServerEndpoint<List<_i4.Workspace>>(
        'workspace',
        'getWorkspaceByUser',
        {'userId': userId},
      );

  _i2.Future<_i4.Workspace?> getWorkspaceById({required int workSpaceId}) =>
      caller.callServerEndpoint<_i4.Workspace?>(
        'workspace',
        'getWorkspaceById',
        {'workSpaceId': workSpaceId},
      );

  _i2.Future<List<_i3.Board>> getBoardByWorkspace({required int workSpaceId}) =>
      caller.callServerEndpoint<List<_i3.Board>>(
        'workspace',
        'getBoardByWorkspace',
        {'workSpaceId': workSpaceId},
      );

  _i2.Future<bool> updateWorkspace({required _i4.Workspace work}) =>
      caller.callServerEndpoint<bool>(
        'workspace',
        'updateWorkspace',
        {'work': work},
      );

  _i2.Future<bool> deleteWorkspace(_i4.Workspace work) =>
      caller.callServerEndpoint<bool>(
        'workspace',
        'deleteWorkspace',
        {'work': work},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )? onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
  }) : super(
          host,
          _i6.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
        ) {
    board = EndpointBoard(this);
    example = EndpointExample(this);
    user = EndpointUser(this);
    workspace = EndpointWorkspace(this);
  }

  late final EndpointBoard board;

  late final EndpointExample example;

  late final EndpointUser user;

  late final EndpointWorkspace workspace;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'board': board,
        'example': example,
        'user': user,
        'workspace': workspace,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
