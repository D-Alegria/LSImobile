import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/dto/dashboard/dashboard.dart';
import 'package:lsi_mobile/core/models/dto/loan_history/loan_history.dart';
import 'package:lsi_mobile/core/models/dto/timeline/timeline.dart';
import 'package:lsi_mobile/core/models/dto/validation/validations.dart';
import 'package:lsi_mobile/core/models/responses/user_details/user_data.dart';

part 'user_details_data.g.dart';

@JsonSerializable()
class UserDetailsData {
  final Validations validations;
  final UserData userData;
  final LoanHistory loanHistory;
  @JsonKey(name: "total_loans")
  final int totalLoans;
  @JsonKey(name: "total_investments")
  final int totalInvestments;
  final dynamic checklist;
  final Dashboard dashboard;
  @JsonKey(name: "people_id")
  final String peopleId;
  final List<Timeline> timeline;


  UserDetailsData({
    this.validations,
    this.userData,
    this.loanHistory,
    this.totalLoans,
    this.totalInvestments,
    this.checklist,
    this.dashboard,
    this.peopleId,
    this.timeline,
  });

  factory UserDetailsData.fromJson(Map<String, dynamic> json) => _$UserDetailsDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDetailsDataToJson(this);
}
