part of 'utilities.dart';

mixin routeName {
  static const login = '/login';
  static const onboard = '/onboard';
  static const splash = 'splash';
  static const register = '/register';
  static const home = '/home';
  static const admin = 'admin';
  static const adminPath = '/home/admin';
  static const cart = 'cart';
  static const cartPath = '/home/cart';
  static const detail = 'detail';
  static const detailPath = '/home/detail';
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
      BlocProvider.of<UserBloc>(context).add(LoadUserData());
      BlocProvider.of<ListProductBloc>(context).add(FetchListProduct());
      return const HomeScreen();
    },
    routes: [
      GoRoute(
        path: routeName.cart,
        builder: (context, state) {
          BlocProvider.of<ListCartBloc>(context).add(FetchListCart());
          return const CartScreen();
        },
      ),
      GoRoute(
        path: 'kilogram',
        name: 'kilogram',
        builder: (context, state) {
          return const KilogramScreen();
        },
      ),
      GoRoute(
        path: 'satuan',
        name: 'satuan',
        builder: (context, state) {
          return const SatuanScreen();
        },
      ),
      GoRoute(
        path: 'order',
        name: 'order',
        builder: (context, state) {
          return const DetailOrder();
        },
        routes: [
          GoRoute(
            path: 'registered',
            name: 'registered',
            builder: (context, state) {
              return const DetailRegistered();
            },
          ),
        ],
      ),
    ],
  ),
], initialLocation: '/onboard', debugLogDiagnostics: true, routerNeglect: true);
