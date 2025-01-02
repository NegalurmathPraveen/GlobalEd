import 'post.dart';

class Block {
  String id;
  BlockType blockType;
  String name;
  String? heading;
  int position;
  int count;
  bool active;
  DateTime createdAt;
  DateTime updatedAt;
  String vertical;
  String? createdBy;
  String? modifiedBy;
  List<Post> posts;

  Block({
    required this.id,
    required this.blockType,
    required this.name,
    this.heading,
    required this.position,
    required this.count,
    required this.active,
    required this.createdAt,
    required this.updatedAt,
    required this.vertical,
    this.createdBy,
    this.modifiedBy,
    required this.posts,
  });

  // Factory method to create a Banner from JSON
  factory Block.fromJson(Map<String, dynamic> json) {
    return Block(
      id: json['id'],
      blockType: BlockType.values.firstWhere((element) => element.name == json['block_type']),
      name: json['name'],
      heading: json['heading'],
      position: json['position'],
      count: json['count'],
      active: json['active'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      vertical: json['vertical'],
      createdBy: json['created_by'],
      modifiedBy: json['modified_by'],
      posts: (json['posts'] as List).map((postJson) => Post.fromJson(postJson)).toList(),
    );
  }

  // Method to convert a Banner to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'block_type': blockType.name,
      'name': name,
      'heading': heading,
      'position': position,
      'count': count,
      'active': active,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
      'vertical': vertical,
      'created_by': createdBy,
      'modified_by': modifiedBy,
      'posts': posts.map((post) => post.toJson()).toList(),
    };
  }
}

enum BlockType { banners, reels, cta, events, inshorts, masterclass }
