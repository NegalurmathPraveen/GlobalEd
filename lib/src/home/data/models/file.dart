class File {
  String id;
  String mediaType;
  String? videoUrl;
  String? thumbnail;
  String? imagePath;
  int mediaOrder;
  String? ratio;
  bool active;
  String post;

  File({
    required this.id,
    required this.mediaType,
    this.videoUrl,
    this.thumbnail,
    this.imagePath,
    required this.mediaOrder,
    this.ratio,
    required this.active,
    required this.post,
  });

  // Factory method to create a File from JSON
  factory File.fromJson(Map<String, dynamic> json) {
    return File(
      id: json['id'],
      mediaType: json['media_type'],
      videoUrl: json['video_url'],
      thumbnail: json['thumbnail'],
      imagePath: json['image_path'],
      mediaOrder: json['media_order'],
      ratio: json['ratio'],
      active: json['active'],
      post: json['post'],
    );
  }

  // Method to convert a File to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'media_type': mediaType,
      'video_url': videoUrl,
      'thumbnail': thumbnail,
      'image_path': imagePath,
      'media_order': mediaOrder,
      'ratio': ratio,
      'active': active,
      'post': post,
    };
  }
}