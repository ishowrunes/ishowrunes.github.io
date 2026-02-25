import 'package:ishowrunes/portfolio/models/base_model.dart';

class SkillsModel extends BaseModel {
  SkillsModel({
    required super.title,
    required super.subtitle,
    required this.mySkills,
  });

  final List<MySkill> mySkills;
}

class MySkill {
  const MySkill({
    required this.title,
    required this.skills,
  });

  final String title;
  final List<String> skills;
}
