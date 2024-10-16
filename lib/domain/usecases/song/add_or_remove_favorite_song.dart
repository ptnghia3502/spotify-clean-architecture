import 'package:clean_code_spotify/core/usecase/usecase.dart';
import 'package:clean_code_spotify/domain/repository/song/song.dart';
import 'package:clean_code_spotify/service_locator.dart';
import 'package:dartz/dartz.dart';

class AddOrRemoveFavoriteSongUseCase implements UseCase<Either, String> {
  @override
  Future<Either> call({String? params}) async {
    return await sl<SongsRepository>().addOrRemoveFavoriteSongs(params!);
  }
}
