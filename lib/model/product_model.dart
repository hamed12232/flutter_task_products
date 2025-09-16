import 'package:equatable/equatable.dart';
import 'package:flutter_task_products/model/rating_model.dart';

class ProductModel extends Equatable {
  final int id;
  final String title;
  final String description;
  final String image;
  final double price;
  final String category;
  final RatingModel rating;

  const ProductModel({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
    required this.category,
    required this.rating,
    required this.description,
  });
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      price: json['price'],
      category: json['category'],
      rating: RatingModel.fromJson(json['rating']),
      description: json['description'],
    );
  }

  @override
  List<Object?> get props => [
    id,
    title,
    image,
    price,
    category,
    rating,
    description,
  ];
}
