import 'package:demoapp/di/injector.dart';
import 'package:injectable/injectable.dart';

final AppDiImp appDi = getIt<AppDiImp>();

@injectable
class AppDiImp {
  AppDiImp() {
    print('create App di imp');
  }
}
