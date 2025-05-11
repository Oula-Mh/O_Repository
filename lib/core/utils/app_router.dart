import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mypro/features/home/data/models/shoes_models_model.dart';
import 'package:mypro/features/home/presentation/manger/shoes_models/shoes_models_cubit.dart';
import 'package:mypro/features/home/presentation/views/home_view.dart';
import '../../features/alnaal/data/repos/alnaal_repo_impl.dart';
import '../../features/alnaal/presentaion/manger/alnaal/alnaal_cubit.dart';
import '../../features/alnaal/presentaion/views/AlnaalView.dart';
import '../../features/home/data/repos/home_repo_impl.dart';
import '../../features/login/presentaion/views/login_view.dart';
import '../buttomNavigationBar/main_page.dart';
import 'api_service.dart';

class AppRoute {

  static const String login = '/LoginView';
  static const String main = '/MainPage';
  static const String alnaal = '/AlnaalView';


  static final  router = GoRouter(routes: [
    GoRoute(path: "/", builder: (context, state) => const LoginView()),

   //داخل ال main يوجد ال page يلي ضمن ال button navigation bar
   GoRoute(path: main, builder: (context, state) => const MainPage()),


    GoRoute(
      path: alnaal,
      builder: (context, state) => BlocProvider(
        create: (context) => AlnaalCubit(
          AlnaalRepoImpl(
            ApiService(
              Dio(),
            ),
          ),
        ),
        child:  AlnaalView(
          shoesModels: state.extra as ShoesModelsModel,
        ),
      ),
    ),


  ]);
}
