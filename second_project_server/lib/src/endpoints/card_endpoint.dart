import 'package:second_project_server/src/generated/card.dart';
import 'package:serverpod/server.dart';

class CardEndpoint extends Endpoint {
  Future<Card> createBoard(Session session, Card card) async {
    await Card.db.insertRow(session, card);
    return card;
  }

  Future<bool> updateCard(Session s, {required Card card}) async {
    try {
      await Card.db.updateRow(s, card);
      return true;
    } catch (e) {
      return false;
    }
  }
}
