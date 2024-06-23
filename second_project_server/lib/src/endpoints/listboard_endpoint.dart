import 'package:second_project_server/src/generated/card.dart';
import 'package:second_project_server/src/generated/list.dart';
import 'package:serverpod/server.dart';

class ListboardEndpoint extends Endpoint {
  Future<List<ListBoard>> getListsByBoard(Session s,
      {required int boardId}) async {
    List<ListBoard> list = await ListBoard.db.find(
      s,
      where: (p0) => p0.boardId.equals(boardId),
    );

    for (int i = 0; i < list.length; i++) {
      List<Card> member = await Card.db.find(
        s,
        where: (p0) => p0.listId.equals(list[i].id),
      );

      list[i].cards = member;
    }
    return list;
  }

  Future<ListBoard> createListBoard(
      Session session, ListBoard listBoard) async {
    await ListBoard.db.insertRow(session, listBoard);
    return listBoard;
  }
}
