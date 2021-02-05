import 'package:dartz/dartz.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/dto/account/account.dart';
import 'package:lsi_mobile/core/models/dto/card/card.dart';
import 'package:lsi_mobile/core/models/requests/initiate_bvn_validation/initiate_bvn_validation_request.dart';
import 'package:lsi_mobile/core/models/requests/resolve_account/resolve_account_request.dart';
import 'package:lsi_mobile/core/models/requests/verify_bvn_otp/verify_bvn_otp_request.dart';
import 'package:lsi_mobile/core/models/responses/initialize_card_transaction/initialize_card_transaction_response.dart';
import 'package:lsi_mobile/core/models/responses/resolve_account/resolve_account_response.dart';

abstract class BankRepo {
  Future<Either<Glitch, List<Account>>> get bankAccounts;

  Future<Either<Glitch, List<Card>>> get usersCards;

  Future<Either<Glitch, Unit>> initiateBvnValidation(
      InitiateBVNValidationRequest request);

  Future<Either<Glitch, Unit>> verifyBvnWithOTP(VerifyBVNOtpRequest request);

  Future<Either<Glitch, ResolveAccountResponse>> resolveBankAccount(
      ResolveAccountRequest request);

  Future<Either<Glitch, Unit>> saveBankAccount(
      {String accountNumber, String accountName, String bankId});

  Future<Either<Glitch, CardTransactionData>> initiateCardTransaction(
      String amount);

  Future<Either<Glitch, Unit>> addNewCard(String reference);
}

// todo FIX repos responses and requests
// todo make all request extend token request
// todo make all response extend response