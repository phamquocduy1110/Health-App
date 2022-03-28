import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String id;
  final String username;
  final String email;
  final String displayName;
  final String photoUrl;
  final String bio;

  User(
      {required this.id,
      required this.username,
      required this.photoUrl,
      required this.email,
      required this.displayName,
      required this.bio});

  factory User.fromDocument(DocumentSnapshot doc) {
    return User(
        id: doc['id'],
        username: doc['username'],
        email: doc['email'],
        displayName: doc['displayName'],
        photoUrl: doc['photoUrl'],
        bio: doc['bio']);
  }
}
