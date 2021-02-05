import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/dto/loan/loan.dart';
import 'package:lsi_mobile/core/models/dto/schedule/schedule.dart';
import 'package:lsi_mobile/core/models/dto/timeline/timeline.dart';

part 'loan_details_response.g.dart';

@JsonSerializable()
class LoanDetailsResponse {
  final bool status;
  final String message;
  final LoanDetailsData data;

  LoanDetailsResponse({
    this.status,
    this.message,
    this.data,
  });

  factory LoanDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$LoanDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoanDetailsResponseToJson(this);
}

@JsonSerializable()
class LoanDetailsData {
  @JsonKey(name: "chart_account_transactions")
  final List chartAccountTransactions;
  final LoanBalance loan;
  @JsonKey(name: "TOTAL_DEBIT")
  final double totalDebit;
  @JsonKey(name: "TOTAL_CREDIT")
  final double totalCredit;
  final List<Schedule> schedule;
  final List<Timeline> timeline;
  @JsonKey(name: "loandetails")
  final Loan loanDetails;
  @JsonKey(name: "OFFER_LINK")
  final Loan offerLink;

  LoanDetailsData({
    this.chartAccountTransactions,
    this.loan,
    this.totalDebit,
    this.totalCredit,
    this.schedule,
    this.timeline,
    this.loanDetails,
    this.offerLink,
  });

  factory LoanDetailsData.fromJson(Map<String, dynamic> json) =>
      _$LoanDetailsDataFromJson(json);

  Map<String, dynamic> toJson() => _$LoanDetailsDataToJson(this);
}

@JsonSerializable()
class LoanBalance {
  @JsonKey(name: "LOAN_BALANCE")
  final double loanBalance;

  LoanBalance(this.loanBalance);

  factory LoanBalance.fromJson(Map<String, dynamic> json) =>
      _$LoanBalanceFromJson(json);

  Map<String, dynamic> toJson() => _$LoanBalanceToJson(this);
}
