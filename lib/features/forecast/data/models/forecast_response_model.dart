import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/features/forecast/data/models/city_model.dart';
import 'package:weather_app/features/forecast/data/models/forecast_model.dart';

part 'forecast_response_model.freezed.dart';
part 'forecast_response_model.g.dart';

@freezed
class ForecastResponseModel with _$ForecastResponseModel {
  const factory ForecastResponseModel({
    String? cod,
    int? message,
    int? cnt,
    @JsonKey(defaultValue: []) List<ForecastModel>? list,
    CityModel? city,
  }) = _ForecastResponseModel;

  factory ForecastResponseModel.fromJson(Map<String, dynamic> json) => _$ForecastResponseModelFromJson(json);
}
