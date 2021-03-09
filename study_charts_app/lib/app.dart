import 'main.dart';
import 'screens/landing_view.dart';
import 'screens/mock_view.dart';
import 'screens/pie_charts_view.dart';
import 'screens/stacked_bar_charts_view.dart';
import 'screens/time_charts.dart';

const initialRoute = '/';

makeRoutes() {
  return {
    '/': (context) => LandingView(),
    '/mock': (context) => MockView(),
    '/stacked_bar_charts': (context) => StackedBarChartsView(),
    '/pie_charts': (context) => PieChartsView(),
    '/time_charts': (context) => TimeChartsView(),
  };
}