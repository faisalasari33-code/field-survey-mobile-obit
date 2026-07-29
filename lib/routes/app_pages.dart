import 'package:go_router/go_router.dart';
// Import file route (sesuaikan nama file jika app_routes.dart atau app_route.dart)
import 'app_route.dart';
// Gunakan relative import agar tidak terpengaruh nama package project
import '../screens/splash/splash_screen.dart';
import '../screens/auth/login.dart';
import '../screens/auth/dashboard.dart';

class AppPages {
  static final router = GoRouter(
    initialLocation: AppRoutes
        .splash, // 👈 Pastikan di sini 'AppRoutes.splash', BUKAN 'AppRoutes.login'
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRoutes.login,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: AppRoutes.dasboard,
        builder: (context, state) => const DashboardPage(),
      ),
    ],
  );
}
