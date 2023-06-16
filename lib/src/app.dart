import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lestari_laundry/data/repository/login/login_repository_impl.dart';
import 'package:lestari_laundry/presentation/pages/login/cubit/login/login_cubit.dart';
import 'package:lestari_laundry/src/utilities/utilities.dart';
import '../data/repository/change_password.dart/change_password_repository_impl.dart';
import '../data/repository/kilogram/kilogram_repository_impl.dart';
import '../data/repository/register/register_repository_impl.dart';
import '../data/repository/satuan/satuan_repository_impl.dart';
import '../presentation/pages/change_password/cubit/change_password_cubit.dart';
import '../presentation/pages/home/kilogram/kilogram_screen/cubit/kilogram_cubit.dart';
import '../presentation/pages/home/satuan/satuan_screen/cubit/satuan_cubit.dart';
import '../presentation/pages/register/cubit/register/register_cubit.dart';
import 'blocs/blocs.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => UserBloc()),
        BlocProvider(
          create: (context) => LoginCubit(LoginRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) => RegisterCubit(RegisterRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) => KilogramCubit(KilogramRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) => SatuanCubit(SatuanRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) =>
              ChangePasswordCubit(ChangePasswordRepositoryImpl()),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerDelegate: router.routerDelegate,
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
      ),
    );
  }
}
