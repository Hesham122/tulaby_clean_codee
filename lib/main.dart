import 'package:device_preview/device_preview.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tulaby_clean_code/cache/cache_helper.dart';
import 'package:tulaby_clean_code/core/api/dio_consumer.dart';
import 'package:tulaby_clean_code/core/utls/router_page.dart';
import 'package:tulaby_clean_code/features/attendance/presentation/manager/cubit/attendance_cubit.dart';
import 'package:tulaby_clean_code/features/sign_in/presentation/manager/cubit/signin_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();
  runApp(DevicePreview(enabled: false, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SigninCubit(DioConsumer(dio: Dio())),
        ),
        BlocProvider(
          create: (context) => AttendanceCubit(
              DioConsumer(dio: Dio())), // Add your second cubit here
        ),
      ],
      child: MaterialApp.router(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        routerConfig: RouterPage.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
