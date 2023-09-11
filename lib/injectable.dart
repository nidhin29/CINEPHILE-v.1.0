import 'package:app_3/injectable.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

GetIt getit = GetIt.instance;

@InjectableInit()
Future<void> configureInjection(String env) async {
  GetItInjectableX(getit).init(environment: env);
}