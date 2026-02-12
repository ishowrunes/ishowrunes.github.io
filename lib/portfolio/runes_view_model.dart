import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ishowrunes/portfolio/models/profile_model.dart';

final runesVMProvider = NotifierProvider.autoDispose<RunesViewModel, RunesState>(RunesViewModel.new);

class RunesState {
  const RunesState({
    this.profile,
  });

  final ProfileModel? profile;

  RunesState copyWith({ProfileModel? profile}) {
    return RunesState(
      profile: profile ?? this.profile,
    );
  }
}

class RunesViewModel extends AutoDisposeNotifier<RunesState> {
  Future<void> init() async {
    const profile = ProfileModel(
      name: 'Ishwor Shrestha',
      heroDescription: 'Senior Mobile Engineer building scalable, production-ready mobile systems.',
      github: 'https://github.com/ishowrunes',
      linkedin: 'https://www.linkedin.com/in/ishwor-shrestha/',
    );

    state = state.copyWith(profile: profile);
  }

  @override
  RunesState build() {
    return const RunesState();
  }
}
