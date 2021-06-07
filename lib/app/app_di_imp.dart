import 'package:demoapp/di/injector.dart';
import 'package:demoapp/page_module/data/page_repository.dart';
import 'package:injectable/injectable.dart';

final AppDiImp appDi = getIt<AppDiImp>();

@injectable
class AppDiImp {
  AppDiImp(this.pageRepository) {
    print('create App di imp');
  }

  final PageRepository pageRepository;
}
