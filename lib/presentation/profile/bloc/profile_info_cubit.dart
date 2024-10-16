import 'package:clean_code_spotify/domain/usecases/auth/get_user.dart';
import 'package:clean_code_spotify/presentation/profile/bloc/profile_info_state.dart';
import 'package:clean_code_spotify/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileInfoCubit extends Cubit<ProfileInfoState> {
  ProfileInfoCubit() : super(ProfileInfoLoading());

  Future<void> getUser() async {
    var user = await sl<GetUserUseCase>().call();

    user.fold((l) {
      emit(ProfileInfoFailure());
    }, (userEntity) {
      emit(ProfileInfoLoaded(userEntity: userEntity));
    });
  }
}
