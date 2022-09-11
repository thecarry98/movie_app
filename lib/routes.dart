import 'package:movie_app/features/home/presentation/bindings/home_binding.dart';
import 'package:movie_app/features/movie_detail/presentation/pages/view_all/bindings/view_all_binding.dart';
import 'package:movie_app/features/splash/bindings/splash_binding.dart';
import 'package:movie_app/features/start/presentation/bindings/start_page_binding.dart';
import 'package:movie_app/features/start/presentation/page/now_showing/now_showing_page_view.dart';
import 'package:movie_app/features/start/presentation/start_page_view.dart';
import 'package:movie_app/repository_binding.dart';
import 'package:movie_app/use_cases_bindings.dart';

import 'features/home/presentation/home_view.dart';
import 'package:get/get.dart';

import 'features/home/presentation/home_view.dart';
import 'package:get/get.dart';
import 'features/movie_detail/presentation/bindings/movie_detail_binding.dart';
import 'features/movie_detail/presentation/movie_detail_view.dart';
import 'features/movie_detail/presentation/movie_detail_auth_view.dart';
import 'features/movie_detail/presentation/pages/view_all/view_all_view.dart';
import 'features/notification/presentation/bindings/noti_page_binding.dart';
import 'features/notification/presentation/noti_page_view.dart';
import 'features/splash/splash_view.dart';
import 'features/start/presentation/page/now_showing/bindings/now_showing_page_binding.dart';
import 'features/ticket/presentation/bindings/ticket_page_binding.dart';
import 'features/ticket/presentation/ticket_page_view.dart';

class Routes {
  Routes._();

  static const String splash = '/splash';
  static const String home = '/home';
  static const String start = '/start';
  static const String ticket = '/ticket';
  static const String notification = '/notification';
  static const String user = '/user';
  static const String now_showing_page = '/now_showing_page';
  static const String movie_detail = '/movie_detail';
  static const String movie_detail_auth = '/movie_detail_auth';
  static const String view_all = '/view_all';

  static final routes = [
    GetPage(
      name: splash,
      page: () => SplashView(),
      bindings: [SplashBinding()],
    ),
    GetPage(
      name: home,
      page: () => const HomeView(),
      bindings: [HomeBinding(), UseCaseBinding(), RepositoryBinding()],
    ),
    // GetPage(
    //   name: start,
    //   page: () => const StartPageView(),
    //   bindings: [StartPageBinding(), NowShowingPageBinding()],
    // ),
    GetPage(
      name: ticket,
      page: () => const TicketPageView(),
      bindings: [TicketPageBinding()],
    ),
    GetPage(
      name: notification,
      page: () => const NotiPageView(),
      bindings: [NotiPageBinding()],
    ),
    // GetPage(
    //   name: now_showing_page,
    //   page: () => NowShowingPageView(),
    //   bindings: [NowShowingPageBinding()],
    // ),
    GetPage(
      name: movie_detail,
      page: () => MovieDetailView(),
      bindings: [
        MovieDetailBinding(),
        UseCaseBinding(),
        RepositoryBinding(),
        ViewAllBinding()
      ],
    ),
    GetPage(
      name: view_all,
      page: () => ViewAllView(),
      bindings: [ViewAllBinding()],
    ),
    // GetPage(
    //   name: movie_detail_auth,
    //   page: () => MovieDetailAuthView(),
    //   bindings: [MovieDetailAuthBinding()],
    // ),
  ];
}
