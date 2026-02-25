import 'package:ishowrunes/portfolio/models/base_model.dart';

class ProjectModel extends BaseModel {
  const ProjectModel({
    required super.title,
    required super.subtitle,
    required this.myProjects,
  });

  final List<MyProject> myProjects;
}

class MyProject {
  const MyProject({
    required this.id,
    required this.name,
    required this.description,
    required this.detail,
    required this.asset,
    required this.contributions,
    this.targets,
  });

  final String id;
  final String name;
  final String description;
  final String detail;
  final String asset;
  final List<String> contributions;

  final List<ProjectTargetModel>? targets;
}

class ProjectTargetModel {
  const ProjectTargetModel({
    required this.source,
    required this.url,
  });

  final ProjectSource source;
  final String url;
}

enum ProjectSource {
  playStore('play_store'),
  appStore('app_store'),
  github('github');

  const ProjectSource(this.source);

  final String source;
}
