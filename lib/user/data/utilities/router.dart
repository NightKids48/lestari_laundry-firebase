part of 'utilities.dart';

class routeName {
  static const login = '/login';
  static const onboard = '/onboard';
  static const register = '/register';
  static const home = '/home';
  static const String orderkg = 'orderkg';
  static const String registerkg = 'registerkg';
  static const String kgsumary = 'kgsumary';
}

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/onboard',
      name: 'onboard',
      builder: (context, state) {
        return const OnboardScreen();
      },
    ),
    GoRoute(
      path: '/register',
      name: 'register',
      builder: (context, state) {
        Map<String, dynamic> data = state.extra as Map<String, dynamic>;
        return RegisterScreen(
          lat: data['lat'],
          long: data['long'],
          city: data['city'],
          province: data['province'],
          zipcode: data['zipcode'],
        );
      },
    ),
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) {
        return const LoginScreen();
      },
      routes: [
        GoRoute(
          path: 'changepassword',
          name: 'changepassword',
          builder: (context, state) {
            return const ChangePassword();
          },
        ),
      ],
    ),
    GoRoute(
      path: '/location',
      name: 'location',
      builder: (context, state) {
        return const LocationScreen();
      },
    ),
    GoRoute(
      path: '/adminhome',
      name: 'adminhome',
      builder: (context, state) {
        return const AdminHome();
      },
    ),
    GoRoute(
      path: '/order',
      name: 'order',
      builder: (context, state) {
        return const OrderAdmin();
      },
    ),
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (context, state) {
        BlocProvider.of<ProfileCubit>(context).fetchProfile();
        return const HomeScreen();
      },
      routes: [
        GoRoute(
          path: 'profile',
          name: 'profile',
          builder: (context, state) {
            BlocProvider.of<ProfileCubit>(context).fetchProfile();
            BlocProvider.of<NameDataCubit>(context).fetchNameData();
            return const InformasiProfile();
          },
        ),
        GoRoute(
          path: 'kilogram',
          name: 'kilogram',
          builder: (context, state) {
            return KilogramScreen();
          },
          routes: [
            GoRoute(
              path: 'orderkg',
              name: routeName.orderkg,
              builder: (context, state) {
                BlocProvider.of<ProfileCubit>(context).fetchProfile();
                return DetailOrderKilogram();
              },
              routes: [
                GoRoute(
                  path: 'kgsumary',
                  name: 'kgsumary',
                  builder: (context, state) {
                    return KgSumary();
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
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            GoRoute(
              path: 'registerkg',
              name: routeName.registerkg,
              builder: (context, state) {
                Map<String, dynamic> data = state.extra as Map<String, dynamic>;
                return DetailRegisterKg(
                  item: data['item'],
                  total: data['total'],
                );
              },
            ),
          ],
        ),
        GoRoute(
          path: 'detailorder',
          name: 'detailorder',
          builder: (context, state) {
            return const DetailOrder();
          },
        ),
        GoRoute(
          path: 'satuan',
          name: 'satuan',
          builder: (context, state) {
            BlocProvider.of<SatuanCubit>(context).fetchSatuan();
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
  ],
  initialLocation: '/adminhome',
  debugLogDiagnostics: true,
  routerNeglect: true,
);
