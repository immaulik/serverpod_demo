import 'package:second_project_server/src/generated/board.dart';
import 'package:serverpod/server.dart';

import '../generated/workspace.dart';

class BoardEndpoint extends Endpoint {
  Future<Board> createBoard(Session session, Board board) async {
    await Board.db.insertRow(session, board);
    return board;
  }

  Future<bool> updateBoard(Session s, {required Board board}) async {
    try {
      await Board.db.updateRow(s, board);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> deleteBoard(Session s, Board board) async {
    try {
      await Board.db.deleteRow(s, board);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<Workspace?> getWorkspaceForBoard(Session s, Board board) async {
    Workspace? work = await Workspace.db.findFirstRow(
      s,
      where: (p0) => p0.id.equals(board.workspaceId),
    );
    return work;
  }
}
