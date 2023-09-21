import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lestari_laundry/user/data/repository/delivery_provider_impl.dart/delivery_provider_repository_impl.dart';
import 'package:lestari_laundry/user/data/repository/get_all_transaction/get_all_transaction_repository_impl.dart';
import 'package:lestari_laundry/user/data/repository/transaction/transaction_repository_impl.dart';
import 'package:lestari_laundry/user/data/utilities/utilities.dart';
import 'package:lestari_laundry/user/domain/model/data/delivery_provider/delivery_provider.dart';
import 'package:lestari_laundry/user/presentation/pages/delivery_provider/cubit/delivery_provider_cubit.dart';
import 'package:lestari_laundry/user/presentation/pages/home/views/aktivitas/activity_screen/cubit/get_all_transaction_cubit.dart';
import 'package:lestari_laundry/user/presentation/pages/transaction/cubit/transaction_cubit.dart';
import 'user/data/repository/change_password.dart/change_password_repository_impl.dart';
import 'user/data/repository/kilogram/kilogram_repository_impl.dart';
import 'user/data/repository/login/login_repository_impl.dart';
import 'user/data/repository/profile/profile_repository_impl.dart';
import 'user/data/repository/register/register_repository_impl.dart';
import 'user/data/repository/satuan/satuan_repository_impl.dart';
import 'user/data/utilities/auth/auth_cubit.dart';
import 'user/presentation/pages/change_password/cubit/change_password_cubit.dart';
import 'user/presentation/pages/home/kilogram/kilogram_screen/cubit/kilogram_cubit.dart';
import 'user/presentation/pages/home/satuan/satuan_screen/cubit/satuan_cubit.dart';
import 'user/presentation/pages/location/cubit/location_cubit.dart';
import 'user/presentation/pages/login/cubit/login/login_cubit.dart';
// import 'user/presentation/pages/profile/name_data/name_data_cubit.dart';
import 'user/presentation/pages/profile/profile_data/profile_cubit.dart';
import 'user/presentation/pages/register/cubit/register/register_cubit.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) =>
              DeliveryProviderCubit(DeliveryProviderRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) =>
              GetAllTransactionCubit(GetAllTransactionRepositoryImpl()),
        ),
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
        BlocProvider(
          create: (context) => ProfileCubit(ProfileRepositoryImpl()),
        ),
        // BlocProvider(
        //   create: (context) => NameDataCubit(NameDataRepositoryImpl()),
        // ),
        BlocProvider(
          create: (context) => LocationCubit(),
        ),
        BlocProvider(
          create: (context) => TransactionCubit(TransactionRepositoryImpl()),
        ),
      ],
      child: MaterialApp.router(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        //
        debugShowCheckedModeBanner: false,
        routerDelegate: router.routerDelegate,
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
      ),
    );
  }
}
