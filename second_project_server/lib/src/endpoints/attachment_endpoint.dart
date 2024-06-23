import 'package:second_project_server/src/generated/attachment.dart';
import 'package:serverpod/server.dart';

class AttachmentEndpoint extends Endpoint {
  Future<Attachment> addAttachment(
      Session session, Attachment attachment) async {
    await Attachment.db.insertRow(session, attachment);
    return attachment;
  }
}
