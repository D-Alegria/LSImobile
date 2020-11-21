import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/requests/request_id_request/request_id_request.dart';

part 'make_loan_payment_request.g.dart';

@JsonSerializable()
class MakeLoanPaymentRequest extends RequestIdRequest {
  final String reference;

  MakeLoanPaymentRequest({
    this.reference,
    String requestId,
    String token,
  }) : super(token: token, requestId: requestId);

  factory MakeLoanPaymentRequest.fromJson(Map<String, dynamic> json) =>
      _$MakeLoanPaymentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$MakeLoanPaymentRequestToJson(this);
}
