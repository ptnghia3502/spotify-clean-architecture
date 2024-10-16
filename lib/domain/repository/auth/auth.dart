import 'package:clean_code_spotify/data/models/auth/create_user_req.dart';
import 'package:clean_code_spotify/data/models/auth/signin_user_req.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either> signup(CreateUserReq createUserReq);

  Future<Either> signin(SigninUserReq signinUserReq);

  Future<Either> getUser();
}
