import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> addMessage({
  required String name,
  required String email,
  required String message,
}) {
  return FirebaseFirestore.instance.collection('contact_messages').add({
    'name': name.trim(),
    'email': email.trim(),
    'message': message.trim(),
    'created_at': FieldValue.serverTimestamp(),
    'read': false,
  });
}
