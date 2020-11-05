import 'package:dartz/dartz.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/dto/card/card.dart';
import 'package:lsi_mobile/core/models/requests/initiate_bvn_validation/initiate_bvn_validation_request.dart';
import 'package:lsi_mobile/core/models/requests/resolve_account/resolve_account_request.dart';
import 'package:lsi_mobile/core/models/requests/verify_bvn_otp/verify_bvn_otp_request.dart';
import 'package:lsi_mobile/core/models/responses/bank_account/bank_account_response.dart';

abstract class BankRepo {
  Future<Either<Glitch, BankAccountResponse>> get bankAccounts;

  Future<Either<Glitch, List<Card>>> get usersCards;

  Future<Either<Glitch, Unit>> initiateBvnValidation(
      InitiateBVNValidationRequest request);

  Future<Either<Glitch, Unit>> verifyBvnWithOTP(VerifyBVNOtpRequest request);

  Future<Either<Glitch, String>> resolveBankAccount(
      ResolveAccountRequest request);
}
