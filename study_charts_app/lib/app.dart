import 'main.dart';
import 'screens/landing_view.dart';
import 'screens/stacked_bar_charts_view.dart';

const initialRoute = '/';

makeRoutes() {
  return {
    '/': (context) => LandingView(),
    '/stacked_bar_charts': (context) => StackedBarChartsView(),
  };
}