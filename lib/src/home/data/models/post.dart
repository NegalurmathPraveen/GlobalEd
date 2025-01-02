import 'file.dart';

class Post {
  String id;
  List<File> files;
  bool likedByMe;
  String title;
  String postType;
  String description;
  String metadata;
  String? fullVideoUrl;
  String? blogUrl;
  bool active;
  bool featured;
  int priority;
  int likes;
  DateTime createdAt;
  DateTime updatedAt;
  String createdBy;
  String layout;
  String? persona;
  String modifiedBy;

  Post({
    required this.id,
    required this.files,
    required this.likedByMe,
    required this.title,
    required this.postType,
    required this.description,
    required this.metadata,
    this.fullVideoUrl,
    this.blogUrl,
    required this.active,
    required this.featured,
    required this.priority,
    required this.likes,
    required this.createdAt,
    required this.updatedAt,
    required this.createdBy,
    required this.layout,
    this.persona,
    required this.modifiedBy,
  });

  // Factory method to create a Post from JSON
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      files: (json['files'] as List).map((fileJson) => File.fromJson(fileJson)).toList(),
      likedByMe: json['liked_by_me'],
      title: json['title'],
      postType: json['post_type'],
      description: json['description'],
      metadata: json['metadata'],
      fullVideoUrl: json['full_video_url'],
      blogUrl: json['blog_url'],
      active: json['active'],
      featured: json['featured'],
      priority: json['priority'],
      likes: json['likes'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      createdBy: json['created_by'],
      layout: json['layout'],
      persona: json['persona'],
      modifiedBy: json['modified_by'],
    );
  }

  // Method to convert a Post to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'files': files.map((file) => file.toJson()).toList(),
      'liked_by_me': likedByMe,
      'title': title,
      'post_type': postType,
      'description': description,
      'metadata': metadata,
      'full_video_url': fullVideoUrl,
      'blog_url': blogUrl,
      'active': active,
      'featured': featured,
      'priority': priority,
      'likes': likes,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
      'created_by': createdBy,
      'layout': layout,
      'persona': persona,
      'modified_by': modifiedBy,
    };
  }
}