import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/constants/api_urls.dart';
import 'package:lsi_mobile/core/models/dto/value/value.dart';
import 'package:lsi_mobile/core/models/requests/token_request/token_request.dart';
import 'package:lsi_mobile/core/models/requests/user_details/user_details_request.dart';
import 'package:lsi_mobile/core/models/responses/get_value/get_value_response.dart';
import 'package:lsi_mobile/core/models/responses/user_details/user_details_data.dart';
import 'package:lsi_mobile/core/models/responses/user_details/user_details_response.dart';
import 'package:lsi_mobile/core/utils/api_manager_util.dart';

abstract class UserRemoteDataSource {
  Future<Either<Glitch, List<Value>>> get countries;

  Future<Either<Glitch, List<Value>>> get states;

  Future<Either<Glitch, List<Value>>> get genders;

  Future<Either<Glitch, List<Value>>> get occupations;

  Future<Either<Glitch, List<Value>>> get workSectors;

  Future<Either<Glitch, List<Value>>> get educationSectors;

  Future<Either<Glitch, List<Value>>> get designations;

  Future<Either<Glitch, List<Value>>> get banks;

  Future<Either<Glitch, List<Value>>> get maritalStatus;

  Future<Either<Glitch, List<Value>>> get loanPurpose;

  Future<Either<Glitch, List<Value>>> get residenceTypes;

  Future<Either<Glitch, List<Value>>> getLGAS(String id);

  Future<Either<Glitch, UserDetailsData>> getUserDetails(TokenRequest request);

  Future<Either<Glitch, Unit>> saveUserDetails(
    UserDetailsRequest request,
  );
}

@LazySingleton(as: UserRemoteDataSource)
class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final ApiManager _apiManager;

  UserRemoteDataSourceImpl(this._apiManager);

  @override
  Future<Either<Glitch, List<Value>>> get countries async =>
      await getValueMethod(ApiUrls.getCountries);

  @override
  Future<Either<Glitch, List<Value>>> get states async =>
      await getValueMethod(ApiUrls.getStates);

  @override
  Future<Either<Glitch, List<Value>>> get banks async =>
      await getValueMethod(ApiUrls.getBanks);

  @override
  Future<Either<Glitch, List<Value>>> get designations async =>
      await getValueMethod(ApiUrls.getDesignations);

  @override
  Future<Either<Glitch, List<Value>>> get educationSectors async =>
      await getValueMethod(ApiUrls.getEducationSectors);

  @override
  Future<Either<Glitch, List<Value>>> get genders async =>
      await getValueMethod(ApiUrls.getGender);

  @override
  Future<Either<Glitch, List<Value>>> getLGAS(String id) async =>
      await getValueMethod(ApiUrls.getLGAs.replaceFirst(':state_id', id));

  @override
  Future<Either<Glitch, List<Value>>> get loanPurpose async =>
      await getValueMethod(ApiUrls.getBanks);

  @override
  Future<Either<Glitch, List<Value>>> get maritalStatus async =>
      await getValueMethod(ApiUrls.getMaritalStatus);

  @override
  Future<Either<Glitch, List<Value>>> get occupations async =>
      await getValueMethod(ApiUrls.getOccupations);

  @override
  Future<Either<Glitch, List<Value>>> get residenceTypes async =>
      await getValueMethod(ApiUrls.getResidenceTypes);

  @override
  Future<Either<Glitch, List<Value>>> get workSectors async =>
      await getValueMethod(ApiUrls.getWorkSectors);

  Future<Either<Glitch, List<Value>>> getValueMethod(
    String url,
  ) async {
    try {
      final response = await _apiManager.get(url: url);
      return response.fold(
        (failure) => left(RemoteGlitch(message: failure.message)),
        (success) {
          final result = GetValueResponse.fromJson(success);
          return right(result.data);
        },
      );
    } on Exception catch (e) {
      print(e);
      return left(
        RemoteGlitch(message: "System Error Occurred please contact developer"),
      );
    }
  }

  @override
  Future<Either<Glitch, UserDetailsData>> getUserDetails(
      TokenRequest request) async {
    try {
      final response = await _apiManager.post(
        url: ApiUrls.userDetails,
        requestBody: request.toJson(),
      );
      return response.fold(
        (failure) => left(RemoteGlitch(message: failure.message)),
        (success) {
          final result = UserDetailsResponse.fromJson(success);
          if (!result.data.userData.status)
            return left(RemoteGlitch(message: result.data.userData.message));
          return right(result.data);
        },
      );
    } on Exception catch (e) {
      print(e);
      return left(
        RemoteGlitch(message: "System Error Occurred please contact developer"),
      );
    }
  }

  @override
  Future<Either<Glitch, Unit>> saveUserDetails(
      UserDetailsRequest request) async {
    try {
      final response = await _apiManager.post(
        url: ApiUrls.saveUserData,
        requestBody: request.toJson(),
      );
      return response.fold(
        (failure) => left(RemoteGlitch(message: failure.message)),
        (success) {
          return right(unit);
        },
      );
    } on Exception catch (e) {
      print(e);
      return left(
        RemoteGlitch(message: "System Error Occurred please contact developer"),
      );
    }
  }
}
