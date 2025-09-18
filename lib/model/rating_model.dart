import 'package:equatable/equatable.dart';

class RatingModel extends Equatable {
  final double rate;
  final int count;

  const RatingModel({required this.rate, required this.count});
  factory RatingModel.fromJson(Map<String, dynamic> json) {
    return RatingModel(
      rate: (json['rate'] as num).toDouble(),
      count: json['count'] as int,
    );
  }

  @override
  List<Object?> get props => [rate, count];
}
