part of 'utilities.dart';

mixin routeName {
  static const login = '/login';
  static const onboard = '/onboard';
  static const register = '/register';
  static const home = '/home';
}

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/onboard',
    name: 'onboard',
    redirect: (context, state) {
      if (FirebaseAuth.instance.currentUser != null) {
        BlocProvider.of<UserBloc>(context).add(LoadUserData());
        return routeName.home;
      } else {
        return routeName.onboard;
      }
    },
    builder: (context, state) {
      return const OnboardScreen();
    },
  ),
  GoRoute(
    path: '/register',
    name: 'register',
    builder: (context, state) {
      return const RegisterScreen();
    },
  ),
  GoRoute(
    path: '/email',
    name: 'email',
    builder: (context, state) {
      return const RegisterEmail();
    },
  ),
  GoRoute(
    path: '/name',
    name: 'name',
    builder: (context, state) {
      return const RegisterName();
    },
  ),
  GoRoute(
    path: '/login',
    name: 'login',
    builder: (context, state) {
      return const LoginScreen();
    },
  ),
  GoRoute(
    path: '/location',
    name: 'location',
    builder: (context, state) {
      return const LocationScreen();
    },
  ),
  GoRoute(
    path: '/home',
    name: 'home',
    builder: (context, state) {
      BlocProvider.of<UserBloc>(context).add(LoadUserData());
      return const HomeScreen();
    },
    routes: [
      GoRoute(
        path: 'detailorder',
        name: 'detailorder',
        builder: (context, state) {
          return const DetailOrder();
        },
      ),
      GoRoute(
          path: 'kilogram',
          name: 'kilogram',
          builder: (context, state) {
            return const KilogramScreen();
          },
          routes: [
            GoRoute(
              path: 'orderkg',
              name: 'orderkg',
              builder: (context, state) {
                return const DetailOrderKilogram();
              },
              routes: [
                GoRoute(
                  path: 'kgsumary',
                  name: 'kgsumary',
                  builder: (context, state) {
                    return const KgSumary();
                  },
                  routes: [
                    GoRoute(
                      path: 'kgpayment',
                      name: 'kgpayment',
                      builder: (context, state) {
                        return const KgPayment();
                      },
                      routes: [
                        GoRoute(
                            path: 'codkg',
                            name: 'codkg',
                            builder: (context, state) {
                              return const CodKg();
                            },
                            routes: [
                              GoRoute(
                                path: 'orderdetailkg',
                                name: 'orderdetailkg',
                                builder: (context, state) {
                                  return const OrderDetailkg();
                                },
                              ),
                            ]),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            GoRoute(
              path: 'registerkg',
              name: 'registerkg',
              builder: (context, state) {
                return const DetailRegisterKg();
              },
            ),
          ]),
      GoRoute(
        path: 'satuan',
        name: 'satuan',
        builder: (context, state) {
          return const SatuanScreen();
        },
        routes: [
          GoRoute(
            path: 'satuanservice',
            name: 'satuanservice',
            builder: (context, state) {
              return const SatuanService();
            },
            routes: [
              GoRoute(
                path: 'ordersatuan',
                name: 'ordersatuan',
                builder: (context, state) {
                  return const DetailOrderSatuan();
                },
              ),
              GoRoute(
                path: 'registersatuan',
                name: 'registersatuan',
                builder: (context, state) {
                  return const DetailRegisterSatuan();
                },
              ),
            ],
          ),
        ],
      ),
    ],
  ),
], initialLocation: '/onboard', debugLogDiagnostics: true, routerNeglect: true);
