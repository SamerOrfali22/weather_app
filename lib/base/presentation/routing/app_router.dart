import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/features/forecast/presentation/pages/forecasts_page.dart';
import 'package:weather_app/features/forecast/presentation/viewmodels/forecast_viewmodel.dart';
import 'package:weather_app/features/weather/presentation/pages/weather_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        //* App Routes *//
        AutoRoute(path: '/', page: WeatherRoute.page),
        AutoRoute(path: '/forecast', page: ForecastRoute.page),
      ];
}
