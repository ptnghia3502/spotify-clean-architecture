import 'package:clean_code_spotify/core/usecase/usecase.dart';
import 'package:clean_code_spotify/data/models/auth/signin_user_req.dart';
import 'package:clean_code_spotify/domain/repository/auth/auth.dart';
import 'package:clean_code_spotify/service_locator.dart';
import 'package:dartz/dartz.dart';

class SigninUseCase implements UseCase<Either, SigninUserReq> {
  @override
  Future<Either> call({SigninUserReq? params}) async {
    return sl<AuthRepository>().signin(params!);
  }
}
