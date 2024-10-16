import 'package:clean_code_spotify/core/usecase/usecase.dart';
import 'package:clean_code_spotify/domain/repository/song/song.dart';
import 'package:clean_code_spotify/service_locator.dart';

class IsFavoriteSongUseCase implements UseCase<bool, String> {
  @override
  Future<bool> call({String? params}) async {
    return await sl<SongsRepository>().isFavoriteSong(params!);
  }
}
