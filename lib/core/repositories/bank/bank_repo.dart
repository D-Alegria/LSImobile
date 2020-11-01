import 'package:dartz/dartz.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/dto/card/card.dart';
import 'package:lsi_mobile/core/models/responses/bank_account/bank_account_response.dart';

abstract class BankRepo {
  Future<Either<Glitch, BankAccountResponse>> get bankAccounts;

  Future<Either<Glitch, List<Card>>> get usersCards;
}
