import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ishowrunes/morf/controllers/input_controller.dart';
import 'package:ishowrunes/morf/morf.dart';
import 'package:ishowrunes/morf/validators/validators.dart';
import 'package:ishowrunes/portfolio/models/cta_model.dart';
import 'package:ishowrunes/portfolio/models/expertise_model.dart';
import 'package:ishowrunes/portfolio/models/how_work_model.dart';
import 'package:ishowrunes/portfolio/models/intro_model.dart';
import 'package:ishowrunes/portfolio/models/profile_model.dart';
import 'package:ishowrunes/portfolio/models/project_model.dart';
import 'package:ishowrunes/portfolio/models/skills_model.dart';
import 'package:ishowrunes/portfolio/runes_repository.dart';
import 'package:ishowrunes/util/store_util.dart';

final runesVMProvider = NotifierProvider.autoDispose<RunesViewModel, RunesState>(RunesViewModel.new);

class RunesState {
  const RunesState({
    this.profile,
    this.intro,
    this.howWork,
    this.expertise,
    this.skills,
    this.cta,
    this.projects,
    this.stateReady = false,
  });

  final bool stateReady;
  final ProfileModel? profile;
  final IntroModel? intro;
  final HowWorkModel? howWork;
  final ExpertiseModel? expertise;
  final SkillsModel? skills;
  final CtaModel? cta;
  final ProjectModel? projects;

  RunesState copyWith({
    ProfileModel? profile,
    IntroModel? intro,
    HowWorkModel? howWork,
    ExpertiseModel? expertise,
    SkillsModel? skills,
    CtaModel? cta,
    bool? stateReady,
    ProjectModel? projects,
  }) {
    return RunesState(
      intro: intro ?? this.intro,
      profile: profile ?? this.profile,
      howWork: howWork ?? this.howWork,
      expertise: expertise ?? this.expertise,
      skills: skills ?? this.skills,
      cta: cta ?? this.cta,
      projects: projects ?? this.projects,
      stateReady: stateReady ?? this.stateReady,
    );
  }
}

class RunesViewModel extends AutoDisposeNotifier<RunesState> with Morf {
  RunesViewModel() {
    _repo = RunesRepository();
    nameController = InputController(
      this,
      tag: 'name',
      label: 'Name',
    );
    messageController = InputController(
      this,
      tag: 'message',
      label: 'Message',
    );
    emailController = InputController(
      this,
      tag: 'email',
      label: 'Email',
      validators: {Validators.email},
    );
  }

  late final RunesRepository _repo;

  late final InputController nameController;
  late final InputController messageController;
  late final InputController emailController;

  Future<void> init() async {
    state = state.copyWith(
      profile: _repo.profile,
      intro: _repo.intro,
      howWork: _repo.howWork,
      expertise: _repo.expertise,
      skills: _repo.skills,
      cta: _repo.ctaContent,
      projects: _repo.projects,
      stateReady: true,
    );
  }

  Future<void> sendMessage() async {
    if (validate()) {
      final data = getFormData().formMap;
      await addMessage(
        name: data['name'],
        email: data['email'],
        message: data['message'],
      );

      resetForm();
    }
  }

  @override
  RunesState build() {
    return const RunesState();
  }
}
