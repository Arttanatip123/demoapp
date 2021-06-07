// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../api/cms_public_api.dart' as _i7;
import '../api/core_api.dart' as _i8;
import '../api/public_api.dart' as _i6;
import '../app/app_di.dart' as _i10;
import '../app/app_di_imp.dart' as _i4;
import '../page_module/data/page_api.dart' as _i9;
import '../page_module/data/page_repository.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioDi = _$DioDi();
  gh.factory<_i3.Dio>(() => dioDi.dio);
  gh.factory<_i4.AppDiImp>(() => _i4.AppDiImp(get<_i5.PageRepository>()));
  gh.singleton<_i6.PublicApi>(_i6.PublicApi(get<_i3.Dio>()));
  gh.singleton<_i7.CmsPublicApi>(_i7.CmsPublicApi(get<_i3.Dio>()));
  gh.singleton<_i8.CoreApi>(_i8.CoreApi(get<_i3.Dio>()));
  gh.singleton<_i9.PageApi>(_i9.PageApi(get<_i8.CoreApi>()));
  gh.singleton<_i5.PageRepository>(_i5.PageRepository(get<_i9.PageApi>()));
  return get;
}

class _$DioDi extends _i10.DioDi {}
