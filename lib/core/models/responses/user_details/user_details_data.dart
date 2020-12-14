import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lsi_mobile/core/models/dto/dashboard/dashboard.dart';
import 'package:lsi_mobile/core/models/dto/loan_history/loan_history.dart';
import 'package:lsi_mobile/core/models/dto/timeline/timeline.dart';
import 'package:lsi_mobile/core/models/dto/validation/validations.dart';
import 'package:lsi_mobile/core/models/responses/user_details/user_data.dart';

part 'user_details_data.g.dart';

part 'user_details_data.freezed.dart';

@freezed
abstract class UserDetailsData with _$UserDetailsData {
  @JsonSerializable(explicitToJson: true)
  factory UserDetailsData({
    @nullable Validations validations,
    @nullable UserData userData,
    @nullable LoanHistory loanHistory,
    @nullable @JsonKey(name: "total_loans") int totalLoans,
    @nullable @JsonKey(name: "total_investments") int totalInvestments,
    @nullable dynamic checklist,
    @nullable Dashboard dashboard,
    @nullable @JsonKey(name: "people_id") String peopleId,
    @nullable List<Timeline> timeline,
  }) = _UserDetailsData;

  factory UserDetailsData.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsDataFromJson(json);
}
