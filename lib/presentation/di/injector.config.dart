// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i3;

import '../../data/data_sources/price_feed_data_source.dart' as _i10;
import '../../data/facades/price_feed_facade.dart' as _i6;
import '../../data/mappers/price_feed_book_mapper.dart' as _i5;
import '../../data/mappers/price_feed_snapshot_mapper.dart' as _i7;
import '../../data/repositories/price_feed_repository_impl.dart' as _i11;
import '../../domain/repositories/price_feed_repository.dart' as _i12;
import '../../domain/use_cases/connect_and_ask_use_case.dart' as _i13;
import '../../domain/use_cases/disconnect_use_case.dart' as _i14;
import '../../domain/use_cases/get_books_use_case.dart' as _i15;
import '../blocs/books_bloc.dart' as _i16;
import '../blocs/price_bloc.dart' as _i4;
import '../mappers/book_model_mapper.dart' as _i9;
import '../mappers/side_model_mapper.dart' as _i8;
import 'injector.dart' as _i17; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appModule = _$AppModule();
  final repositoriesModule = _$RepositoriesModule();
  gh.lazySingleton<_i3.Logger>(() => appModule.logger);
  gh.factory<_i4.PriceBloc>(() => _i4.PriceBloc());
  gh.factory<_i5.PriceFeedBookMapper>(() => _i5.PriceFeedBookMapper());
  gh.lazySingleton<_i6.PriceFeedFacade>(() => _i6.PriceFeedFacade());
  gh.factory<_i7.PriceFeedSnapshotMapper>(() => _i7.PriceFeedSnapshotMapper());
  gh.factory<_i8.SideModelMapper>(() => _i8.SideModelMapper());
  gh.factory<_i9.BookModelMapper>(
      () => _i9.BookModelMapper(get<_i8.SideModelMapper>()));
  gh.factory<_i10.PriceFeedDataSource>(
      () => _i10.PriceFeedDataSource(get<_i6.PriceFeedFacade>()));
  gh.factory<_i11.PriceFeedRepositoryImpl>(() => _i11.PriceFeedRepositoryImpl(
      get<_i10.PriceFeedDataSource>(),
      get<_i5.PriceFeedBookMapper>(),
      get<_i7.PriceFeedSnapshotMapper>()));
  gh.lazySingleton<_i12.PriceFeedRepository>(() => repositoriesModule
      .priceFeedRepository(get<_i11.PriceFeedRepositoryImpl>()));
  gh.factory<_i13.ConnectAndAskUseCase>(
      () => _i13.ConnectAndAskUseCase(get<_i12.PriceFeedRepository>()));
  gh.factory<_i14.DisconnectUseCase>(
      () => _i14.DisconnectUseCase(get<_i12.PriceFeedRepository>()));
  gh.factory<_i15.GetBooksUseCase>(
      () => _i15.GetBooksUseCase(get<_i12.PriceFeedRepository>()));
  gh.factory<_i16.BooksBloc>(() => _i16.BooksBloc(
      get<_i13.ConnectAndAskUseCase>(),
      get<_i14.DisconnectUseCase>(),
      get<_i15.GetBooksUseCase>(),
      get<_i9.BookModelMapper>()));
  return get;
}

class _$AppModule extends _i17.AppModule {}

class _$RepositoriesModule extends _i17.RepositoriesModule {}
