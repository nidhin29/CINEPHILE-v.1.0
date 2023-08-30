import 'package:app_3/Presentation/deatils_page.dart';
import 'package:app_3/Presentation/home_page.dart';
import 'package:app_3/Presentation/register_page.dart';
import 'package:app_3/Presentation/sign_in_page.dart';
import 'package:app_3/Presentation/splash/splash1.dart';
import 'package:auto_route/auto_route.dart';
part 'router.gr.dart';

 @AutoRouterConfig()
 class AppRouter extends _$AppRouter {  

 @override      
   List<AutoRoute> get routes => [ 
    AutoRoute(page: SplashRoute.page,path: "/")  ,   
    AutoRoute(page: SignInRoute.page,path: "/SignIn") ,
    AutoRoute(page: RegisterRoute.page,path: '/Register'),
    AutoRoute(page: HomeRoute.page,path: '/Home'), 
    AutoRoute(page: DetailsRoute.page,path: '/Detail')       
  ];    
}    
