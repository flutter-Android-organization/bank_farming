import 'package:bank_farming/src/features/account/presentation/forget_page.dart';
import 'package:bank_farming/src/features/account/presentation/login_page.dart';
import 'package:bank_farming/src/features/account/presentation/new_password_page.dart';
import 'package:bank_farming/src/features/account/presentation/otp_page.dart';
import 'package:bank_farming/src/features/account/presentation/signup_page.dart';
import 'package:bank_farming/src/features/account/presentation/verified_change_page.dart';
import 'package:bank_farming/src/features/chat/presentation/chat_page.dart';
import 'package:bank_farming/src/features/chat/presentation/let_chat_page.dart';
import 'package:bank_farming/src/features/feed/presentation/feed_page.dart';
import 'package:bank_farming/src/features/home/presentation/home_page.dart';
import 'package:bank_farming/src/features/page_navigation/presentation/page_nav.dart';
import 'package:bank_farming/src/features/profile/presentation/profile_page.dart';
import 'package:bank_farming/src/routing/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../features/intro/presentation/intro_page.dart';
part 'route.g.dart';

@Riverpod(keepAlive: true)
GoRouter route(ref) {
  return GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: RouteNames.introduction.name,
        pageBuilder: (context, state) => MaterialPage(child: IntroPage()),
        routes: [
          GoRoute(
            path: '/login',
            name: RouteNames.login.name,
            pageBuilder: (context, state) => MaterialPage(child: LoginPage()),
            routes: [
              GoRoute(
                path: 'signup',
                name: RouteNames.signup.name,
                pageBuilder:
                    (context, state) => MaterialPage(child: SignupPage()),
              ),
              GoRoute(
                path: 'pageNav',
                name: RouteNames.pageNav.name,
                pageBuilder:
                    (context, state) => MaterialPage(child: PageNav()),
              ),
              // StatefulShellRoute.indexedStack(
              //   builder: (context, state, navigationShell) {
              //     return PageNav(navigationShell: navigationShell);
              //   },
              //   branches: [
              //     StatefulShellBranch(
              //       routes: [
              //         GoRoute(
              //           path: 'home',
              //           name: RouteNames.home.name,
              //           pageBuilder:
              //               (context, state) => MaterialPage(child: HomePage()),
              //         ),
              //       ],
              //     ),
              //     StatefulShellBranch(
              //       routes: [
              //         GoRoute(
              //           path: 'profile',
              //           name: RouteNames.profile.name,
              //           pageBuilder:
              //               (context, state) =>
              //                   MaterialPage(child: ProfilePage()),
              //         ),
              //       ],
              //     ),
              //     StatefulShellBranch(
              //       routes: [
              //         GoRoute(
              //           path: 'feed',
              //           name: RouteNames.feed.name,
              //           pageBuilder:
              //               (context, state) => MaterialPage(child: FeedPage()),
              //         ),
              //       ],
              //     ),
              //     StatefulShellBranch(
              //       routes: [
              //         GoRoute(
              //           path: 'chat',
              //           name: RouteNames.chat.name,
              //           pageBuilder:
              //               (context, state) => MaterialPage(child: ChatPage()),
              //         ),
              //       ],
              //     ),
              //   ],
              // ),
              GoRoute(
                path: '/forgot',
                name: RouteNames.forget.name,
                pageBuilder:
                    (context, state) => MaterialPage(child: ForgetPage()),
                routes: [
                  GoRoute(
                    path: 'otp',
                    name: RouteNames.otp.name,
                    pageBuilder:
                        (context, state) => MaterialPage(child: OtpPage()),
                    routes: [
                      GoRoute(
                        path: 'createNew',
                        name: RouteNames.createNew.name,
                        pageBuilder:
                            (context, state) =>
                                MaterialPage(child: NewPasswordPage()),
                        routes: [
                          GoRoute(
                            path: 'verifyChange',
                            name: RouteNames.verifyChange.name,
                            pageBuilder:
                                (context, state) =>
                                    MaterialPage(child: VerifiedChangePage()),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
