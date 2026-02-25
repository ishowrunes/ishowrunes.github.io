import 'package:ishowrunes/portfolio/models/base_model.dart';

class CtaModel extends BaseModel {
  const CtaModel({
    required super.title,
    required super.subtitle,
    required this.contents,
  });

  final List<CtaContentModel> contents;
}

class CtaContentModel {
  const CtaContentModel({
    required this.title,
    this.contents,
  });

  final String title;
  final List<String>? contents;
}
