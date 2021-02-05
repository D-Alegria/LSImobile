import 'package:json_annotation/json_annotation.dart';

part 'card.g.dart';

@JsonSerializable()
class Card {
  @JsonKey(name: "connected_card_id")
  final String connectedCardId;
  @JsonKey(name: "ACCOUNT_CARD_ID")
  final String accountCardId;
  @JsonKey(name: "CARD_TYPE")
  final String cardType;
  @JsonKey(name: "LAST_FOUR_DIGITS")
  final String lastFourDigits;
  @JsonKey(name: "CARD_NAME")
  final dynamic cardName;
  @JsonKey(name: "VERIFIED_STATUS")
  final String verifiedStatus;
  @JsonKey(name: "VERIFIED_DATE")
  final dynamic verifiedDate;
  @JsonKey(name: "PEOPLE_ID")
  final String peopleId;
  @JsonKey(name: "DATE_ADDED")
  final DateTime dateAdded;
  @JsonKey(name: "BANK_OF_ISSUE")
  final dynamic bankOfIssue;
  @JsonKey(name: "TYPE_OF")
  final String typeOf;
  @JsonKey(name: "BVN")
  final dynamic bvn;
  @JsonKey(name: "BANK_ID")
  final dynamic bankId;
  @JsonKey(name: "ATTACHMENT_ID")
  final dynamic attachmentId;
  @JsonKey(name: "EXPIRY_DATE")
  final String expiryDate;
  @JsonKey(name: "CVV2")
  final dynamic cvv2;
  @JsonKey(name: "CARD_NUMBER")
  final dynamic cardNumber;
  @JsonKey(name: "IS_DEFAULT")
  final String isDefault;
  @JsonKey(name: "CARD_FIRST_NAME")
  final dynamic cardFirstName;
  @JsonKey(name: "CARD_LAST_NAME")
  final dynamic cardLastName;
  @JsonKey(name: "EXP_MONTH")
  final String expMonth;
  @JsonKey(name: "EXP_YEAR")
  final String expYear;
  @JsonKey(name: "LENDER_ID")
  final String lenderId;
  @JsonKey(name: "FULL_EXPIRY_DATE")
  final dynamic fullExpiryDate;
  @JsonKey(name: "BVN_CODE")
  final dynamic bvnCode;
  @JsonKey(name: "VERIFY_ACCOUNT")
  final String verifyAccount;
  @JsonKey(name: "VERIFY_NAME")
  final String verifyName;
  @JsonKey(name: "DATE_VERIFIED")
  final dynamic dateVerified;
  @JsonKey(name: "BANK_LOGO")
  final dynamic bankLogo;
  @JsonKey(name: "RECURRENT_BILLING_TOKEN")
  final dynamic recurrentBillingToken;
  @JsonKey(name: "IS_INV")
  final String isInv;
  @JsonKey(name: "CARD_CHECK_ID")
  final dynamic cardCheckId;
  @JsonKey(name: "CARD_RESOLVED")
  final String cardResolved;
  @JsonKey(name: "PAYSTACK_AUTHORIZATION_CODE")
  final String paystackAuthorizationCode;
  @JsonKey(name: "CARD_VALIDATED_THROUGH")
  final String cardValidatedThrough;
  @JsonKey(name: "IS_SEVEN_HUNDRED")
  final String isSevenHundred;
  @JsonKey(name: "IS_TEST")
  final String isTest;
  final String last4;
  final String expiry_date;
  final String brand;
  final String bank;
  @JsonKey(name: "card_id")
  final String cardId;

  Card({
    this.connectedCardId,
    this.accountCardId,
    this.cardType,
    this.lastFourDigits,
    this.cardName,
    this.verifiedStatus,
    this.verifiedDate,
    this.peopleId,
    this.dateAdded,
    this.bankOfIssue,
    this.typeOf,
    this.bvn,
    this.bankId,
    this.attachmentId,
    this.expiryDate,
    this.cvv2,
    this.cardNumber,
    this.isDefault,
    this.cardFirstName,
    this.cardLastName,
    this.expMonth,
    this.expYear,
    this.lenderId,
    this.fullExpiryDate,
    this.bvnCode,
    this.verifyAccount,
    this.verifyName,
    this.dateVerified,
    this.bankLogo,
    this.recurrentBillingToken,
    this.isInv,
    this.cardCheckId,
    this.cardResolved,
    this.paystackAuthorizationCode,
    this.cardValidatedThrough,
    this.isSevenHundred,
    this.isTest,
    this.last4,
    this.expiry_date,
    this.brand,
    this.bank,
    this.cardId,
  });

  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);

  Map<String, dynamic> toJson() => _$CardToJson(this);
}
