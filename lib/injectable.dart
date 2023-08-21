import 'package:app_3/injectable.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt getit = GetIt.instance;
@InjectableInit()
void configureInjection(String env) => getit.init();
