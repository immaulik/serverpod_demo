/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/board_endpoint.dart' as _i2;
import '../endpoints/example_endpoint.dart' as _i3;
import '../endpoints/user_endpoint.dart' as _i4;
import '../endpoints/workspace_endpoint.dart' as _i5;
import 'package:second_project_server/src/generated/board.dart' as _i6;
import 'package:second_project_server/src/generated/user.dart' as _i7;
import 'package:second_project_server/src/generated/workspace.dart' as _i8;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'board': _i2.BoardEndpoint()
        ..initialize(
          server,
          'board',
          null,
        ),
      'example': _i3.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'user': _i4.UserEndpoint()
        ..initialize(
          server,
          'user',
          null,
        ),
      'workspace': _i5.WorkspaceEndpoint()
        ..initialize(
          server,
          'workspace',
          null,
        ),
    };
    connectors['board'] = _i1.EndpointConnector(
      name: 'board',
      endpoint: endpoints['board']!,
      methodConnectors: {
        'createBoard': _i1.MethodConnector(
          name: 'createBoard',
          params: {
            'board': _i1.ParameterDescription(
              name: 'board',
              type: _i1.getType<_i6.Board>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['board'] as _i2.BoardEndpoint).createBoard(
            session,
            params['board'],
          ),
        ),
        'updateBoard': _i1.MethodConnector(
          name: 'updateBoard',
          params: {
            'board': _i1.ParameterDescription(
              name: 'board',
              type: _i1.getType<_i6.Board>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['board'] as _i2.BoardEndpoint).updateBoard(
            session,
            board: params['board'],
          ),
        ),
        'deleteBoard': _i1.MethodConnector(
          name: 'deleteBoard',
          params: {
            'board': _i1.ParameterDescription(
              name: 'board',
              type: _i1.getType<_i6.Board>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['board'] as _i2.BoardEndpoint).deleteBoard(
            session,
            params['board'],
          ),
        ),
        'getWorkspaceForBoard': _i1.MethodConnector(
          name: 'getWorkspaceForBoard',
          params: {
            'board': _i1.ParameterDescription(
              name: 'board',
              type: _i1.getType<_i6.Board>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['board'] as _i2.BoardEndpoint).getWorkspaceForBoard(
            session,
            params['board'],
          ),
        ),
      },
    );
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i3.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['user'] = _i1.EndpointConnector(
      name: 'user',
      endpoint: endpoints['user']!,
      methodConnectors: {
        'createUser': _i1.MethodConnector(
          name: 'createUser',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i7.User>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i4.UserEndpoint).createUser(
            session,
            params['user'],
          ),
        ),
        'getUserById': _i1.MethodConnector(
          name: 'getUserById',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i4.UserEndpoint).getUserById(
            session,
            params['userId'],
          ),
        ),
      },
    );
    connectors['workspace'] = _i1.EndpointConnector(
      name: 'workspace',
      endpoint: endpoints['workspace']!,
      methodConnectors: {
        'createWorkspace': _i1.MethodConnector(
          name: 'createWorkspace',
          params: {
            'workspace': _i1.ParameterDescription(
              name: 'workspace',
              type: _i1.getType<_i8.Workspace>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['workspace'] as _i5.WorkspaceEndpoint).createWorkspace(
            session,
            params['workspace'],
          ),
        ),
        'getWorkspaceByUser': _i1.MethodConnector(
          name: 'getWorkspaceByUser',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['workspace'] as _i5.WorkspaceEndpoint)
                  .getWorkspaceByUser(
            session,
            userId: params['userId'],
          ),
        ),
        'getWorkspaceById': _i1.MethodConnector(
          name: 'getWorkspaceById',
          params: {
            'workSpaceId': _i1.ParameterDescription(
              name: 'workSpaceId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['workspace'] as _i5.WorkspaceEndpoint)
                  .getWorkspaceById(
            session,
            workSpaceId: params['workSpaceId'],
          ),
        ),
        'getBoardByWorkspace': _i1.MethodConnector(
          name: 'getBoardByWorkspace',
          params: {
            'workSpaceId': _i1.ParameterDescription(
              name: 'workSpaceId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['workspace'] as _i5.WorkspaceEndpoint)
                  .getBoardByWorkspace(
            session,
            workSpaceId: params['workSpaceId'],
          ),
        ),
        'updateWorkspace': _i1.MethodConnector(
          name: 'updateWorkspace',
          params: {
            'work': _i1.ParameterDescription(
              name: 'work',
              type: _i1.getType<_i8.Workspace>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['workspace'] as _i5.WorkspaceEndpoint).updateWorkspace(
            session,
            work: params['work'],
          ),
        ),
        'deleteWorkspace': _i1.MethodConnector(
          name: 'deleteWorkspace',
          params: {
            'work': _i1.ParameterDescription(
              name: 'work',
              type: _i1.getType<_i8.Workspace>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['workspace'] as _i5.WorkspaceEndpoint).deleteWorkspace(
            session,
            params['work'],
          ),
        ),
      },
    );
  }
}
