import 'package:ishowrunes/portfolio/models/base_model.dart';

class OpenSourceExpModel extends BaseModel {
  const OpenSourceExpModel({
    required super.title,
    required super.subtitle,
    required this.contents,
    required this.description,
  });

  final List<String> contents;
  final String description;
}
