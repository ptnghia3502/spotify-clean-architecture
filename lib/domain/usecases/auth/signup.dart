import 'package:clean_code_spotify/core/usecase/usecase.dart';
import 'package:clean_code_spotify/data/models/auth/create_user_req.dart';
import 'package:clean_code_spotify/domain/repository/auth/auth.dart';
import 'package:clean_code_spotify/service_locator.dart';
import 'package:dartz/dartz.dart';

class SignupUseCase implements UseCase<Either, CreateUserReq> {
  @override
  Future<Either> call({CreateUserReq? params}) async {
    return sl<AuthRepository>().signup(params!);
  }
}
