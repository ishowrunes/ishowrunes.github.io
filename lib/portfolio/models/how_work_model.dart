import 'package:ishowrunes/portfolio/models/base_model.dart';

class HowWorkModel extends BaseModel {
  const HowWorkModel({
    required super.title,
    required super.subtitle,
    required this.contents,
  });

  final List<String> contents;
}
