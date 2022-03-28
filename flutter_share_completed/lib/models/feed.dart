import 'package:cloud_firestore/cloud_firestore.dart';

class Feed {
  final String username;
  final String userId;
  final String type; // like, follow, comment
  final String mediaUrl;
  final String postId;
  final String userProfileImg;
  final String commentData;
  final Timestamp timestamp;

  Feed({
    required this.username,
    required this.userId,
    required this.type,
    required this.mediaUrl,
    required this.postId,
    required this.userProfileImg,
    required this.commentData,
    required this.timestamp,
  });

  factory Feed.fromDocument(DocumentSnapshot doc) {
    return Feed(
      username: doc['username'],
      userId: doc['userId'],
      type: doc['type'],
      mediaUrl: doc['mediaUrl'],
      postId: doc['postId'],
      userProfileImg: doc['userProfileImg'],
      commentData: doc['commentData'],
      timestamp: doc['timestamp'],
    );
  }
}
