import 'package:second_project_server/src/generated/protocol.dart';
import 'package:second_project_server/src/generated/workspace.dart';
import 'package:serverpod/server.dart';

class WorkspaceEndpoint extends Endpoint {
  Future<Workspace> createWorkspace(
      Session session, Workspace workspace) async {
    await Workspace.db.insertRow(session, workspace);
    return workspace;
  }

  Future<List<Workspace>> getWorkspaceByUser(Session s,
      {required int userId}) async {
    List<Workspace> list =
        await Workspace.db.find(s, where: (w) => w.userId.equals(userId));
    for (int i = 0; i < list.length; i++) {
      List<Member> member = await Member.db.find(
        s,
        where: (p0) => p0.workspaceId.equals(list[i].id),
      );

      list[i].members = member;
    }
    return list;
  }

  Future<Workspace?> getWorkspaceById(Session s,
      {required int workSpaceId}) async {
    Workspace? w = await Workspace.db.findById(s, workSpaceId);
    return w;
  }

  Future<List<Board>> getBoardByWorkspace(Session s,
      {required int workSpaceId}) async {
    List<Board> list = await Board.db.find(
      s,
      where: (p0) => p0.workspaceId.equals(workSpaceId),
    );
    return list;
  }

  Future<bool> updateWorkspace(Session s, {required Workspace work}) async {
    try {
      await Workspace.db.updateRow(s, work);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> deleteWorkspace(Session s, Workspace work) async {
    try {
      await Workspace.db.deleteRow(s, work);
      return true;
    } catch (e) {
      return false;
    }
  }
}
