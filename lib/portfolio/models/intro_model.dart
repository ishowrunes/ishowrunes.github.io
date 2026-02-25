import 'package:ishowrunes/portfolio/models/base_model.dart';

class IntroModel extends BaseModel {
  const IntroModel({
    required super.title,
    required super.subtitle,
    required this.intros,
  });

  final List<String> intros;
}
