import 'package:ishowrunes/portfolio/models/base_model.dart';

class ExpertiseModel extends BaseModel {
  const ExpertiseModel({
    required super.title,
    required super.subtitle,
    required this.description,
    required this.expertise,
  });

  final String description;
  final List<MyExpertise> expertise;
}

class MyExpertise {
  const MyExpertise({required this.title, required this.description});

  final String title;
  final String description;
}
