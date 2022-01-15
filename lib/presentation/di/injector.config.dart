// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/data_sources/price_feed_data_source.dart' as _i10;
import '../../data/facades/price_feed_facade.dart' as _i7;
import '../../data/mappers/price_feed_book_mapper.dart' as _i6;
import '../../data/mappers/price_feed_snapshot_mapper.dart' as _i8;
import '../../data/repositories/price_feed_repository_impl.dart' as _i11;
import '../../domain/repositories/price_feed_repository.dart' as _i5;
import '../../domain/use_cases/get_books_use_case.dart' as _i4;
import '../mappers/book_model_mapper.dart' as _i3;
import '../mappers/side_model_mapper.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.BookModelMapper>(() => _i3.BookModelMapper());
  gh.factory<_i4.GetBooksUseCase>(
      () => _i4.GetBooksUseCase(get<_i5.PriceFeedRepository>()));
  gh.factory<_i6.PriceFeedBookMapper>(() => _i6.PriceFeedBookMapper());
  gh.lazySingleton<_i7.PriceFeedFacade>(() => _i7.PriceFeedFacade());
  gh.factory<_i8.PriceFeedSnapshotMapper>(() => _i8.PriceFeedSnapshotMapper());
  gh.factory<_i9.SideModelMapper>(() => _i9.SideModelMapper());
  gh.factory<_i10.PriceFeedDataSource>(
      () => _i10.PriceFeedDataSource(get<_i7.PriceFeedFacade>()));
  gh.factory<_i11.PriceFeedRepositoryImpl>(() => _i11.PriceFeedRepositoryImpl(
      get<_i10.PriceFeedDataSource>(),
      get<_i6.PriceFeedBookMapper>(),
      get<_i8.PriceFeedSnapshotMapper>()));
  return get;
}
