import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String postId;
  final String ownerId;
  final String username;
  final String location;
  final String description;
  final String mediaUrl;
  Map likes;
  int likeCount;

  Post(
      {required this.postId,
      required this.ownerId,
      required this.username,
      required this.location,
      required this.description,
      required this.mediaUrl,
      required this.likes,
      required this.likeCount});

  factory Post.fromDocument(DocumentSnapshot doc) {
    return Post(
      postId: doc['postId'],
      ownerId: doc['ownerId'],
      username: doc['username'],
      location: doc['location'],
      description: doc['description'],
      mediaUrl: doc['mediaUrl'],
      likes: doc['likes'],
      likeCount: doc['likeCount'],
    );
  }

  int getLikeCount(likes) {
    if (likes == {}) {
      return 0;
    }

    int count = 0;
    likes.values.forEach((val) {
      if (val == true) {
        count += 1;
      }
    });
    return count;
  }
}
