import 'package:clean_code_spotify/core/usecase/usecase.dart';
import 'package:clean_code_spotify/domain/repository/song/song.dart';
import 'package:clean_code_spotify/service_locator.dart';
import 'package:dartz/dartz.dart';

class GetPlayListUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    return await sl<SongsRepository>().getPlayList();
  }
}
