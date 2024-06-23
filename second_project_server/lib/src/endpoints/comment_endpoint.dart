import 'package:second_project_server/src/generated/comment.dart';
import 'package:serverpod/server.dart';

class CommentEndpoint extends Endpoint {
  Future<Comment> createActivity(Session session, Comment comment) async {
    await Comment.db.insertRow(session, comment);
    return comment;
  }

  Future<bool> deleteComment(Session s, Comment comment) async {
    try {
      await Comment.db.deleteRow(s, comment);
      return true;
    } catch (e) {
      return false;
    }
  }
}
