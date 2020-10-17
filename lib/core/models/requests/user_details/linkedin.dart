import 'package:json_annotation/json_annotation.dart';

part 'linkedin.g.dart';

@JsonSerializable(nullable: false)
class Linkedin {
  final String fullname;
  final String picture;
  final String profile;
  final String connection;
  final String location;
  final String industry;
  final String headline;
  final String summary;
  final String email;
  final List companies;

  Linkedin({
    this.fullname,
    this.picture,
    this.profile,
    this.connection,
    this.location,
    this.industry,
    this.headline,
    this.summary,
    this.email,
    this.companies,
  });

  factory Linkedin.fromJson(Map<String, dynamic> json) =>
      _$LinkedinFromJson(json);

  Map<String, dynamic> toJson() => _$LinkedinToJson(this);
}
