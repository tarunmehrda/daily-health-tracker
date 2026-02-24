import 'package:get/get.dart';
import '../views/login/login_view.dart';
import '../views/dashboard/dashboard_view.dart';
import '../views/activity_logs/activity_logs_view.dart';
import '../utils/bindings.dart';
import 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginView(),
    ),
    GetPage(
      name: Routes.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: Routes.ACTIVITY_LOGS,
      page: () => const ActivityLogsView(),
      binding: ActivityBinding(),
    ),
  ];
}
