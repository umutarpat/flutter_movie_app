import 'package:json_annotation/json_annotation.dart';

part 'production_country.g.dart';

@JsonSerializable()
class ProductionCountry {
  @JsonKey(name: 'iso_3166_1')
  String? iso31661;
  String? name;

  ProductionCountry({this.iso31661, this.name});

  factory ProductionCountry.fromJson(Map<String, dynamic> json) {
    return _$ProductionCountryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductionCountryToJson(this);
}
