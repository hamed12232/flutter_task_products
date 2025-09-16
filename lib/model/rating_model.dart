import 'package:equatable/equatable.dart';

class RatingModel extends Equatable {
  final double rate;
  final double count;


  const RatingModel({required this.rate, required this.count});
  factory RatingModel.fromJson(Map<String, dynamic> json) {
    return RatingModel(
      rate: json['rate'],
      count: json['count'],
    );
  }
  
  
  @override
  List<Object?> get props => [rate, count];

}