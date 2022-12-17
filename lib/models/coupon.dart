import 'dart:convert';
import 'dart:ffi';

class CouponModel {
  final String id;
  final String userId;
  final String name;
  final String desc;
  final Array likes;
  final Array links;
  final String location;

  CouponModel({
    required this.id,
    required this.userId,
    required this.name,
    required this.desc,
    required this.likes,
    required this.links,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'name': name,
      'desc': desc,
      'likes': likes,
      'links': links,
      'location': location,
    };
  }

  factory CouponModel.fromJson(Map<String, dynamic> map) {
    return CouponModel(
      id: map['_id'] ?? ' ',
      userId: map['userId'] ?? ' ',
      name: map['name'] ?? ' ',
      desc: map['desc'] ?? ' ',
      likes: map['likes'] ?? ' ',
      links: map['links'] ?? ' ',
      location: map['location'] ?? ' ',
    );
  }

  String toJson() => json.encode(toMap());
}