// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:mahmoud_task_trust/core/api/api_client.dart' as _i480;
import 'package:mahmoud_task_trust/core/di/cubit_module.dart' as _i55;
import 'package:mahmoud_task_trust/core/language/language_cubit.dart' as _i464;
import 'package:mahmoud_task_trust/core/preferences/app_preferences.dart'
    as _i676;
import 'package:mahmoud_task_trust/core/storage/guest_id_service.dart' as _i634;
import 'package:mahmoud_task_trust/features/cart/data/datasources/cart_remote_data_source.dart'
    as _i973;
import 'package:mahmoud_task_trust/features/cart/data/datasources/guest_id_remote_data_source.dart'
    as _i15;
import 'package:mahmoud_task_trust/features/cart/data/repositories/cart_repository_impl.dart'
    as _i1064;
import 'package:mahmoud_task_trust/features/cart/data/repositories/guest_id_repository_impl.dart'
    as _i563;
import 'package:mahmoud_task_trust/features/cart/domain/repositories/cart_repository.dart'
    as _i622;
import 'package:mahmoud_task_trust/features/cart/domain/repositories/guest_id_repository.dart'
    as _i806;
import 'package:mahmoud_task_trust/features/cart/domain/usecases/add_to_cart.dart'
    as _i410;
import 'package:mahmoud_task_trust/features/cart/domain/usecases/delete_from_cart.dart'
    as _i137;
import 'package:mahmoud_task_trust/features/cart/domain/usecases/get_cart.dart'
    as _i308;
import 'package:mahmoud_task_trust/features/cart/domain/usecases/get_guest_id.dart'
    as _i259;
import 'package:mahmoud_task_trust/features/cart/presentation/cubit/cart_cubit.dart'
    as _i910;
import 'package:mahmoud_task_trust/features/categories/data/datasources/categories_remote_data_source.dart'
    as _i236;
import 'package:mahmoud_task_trust/features/categories/data/repositories/categories_repository_impl.dart'
    as _i318;
import 'package:mahmoud_task_trust/features/categories/domain/repositories/categories_repository.dart'
    as _i952;
import 'package:mahmoud_task_trust/features/categories/domain/usecases/get_categories.dart'
    as _i201;
import 'package:mahmoud_task_trust/features/categories/presentation/cubit/categories_cubit.dart'
    as _i346;
import 'package:mahmoud_task_trust/features/product_details/data/datasources/product_details_remote_data_source.dart'
    as _i740;
import 'package:mahmoud_task_trust/features/product_details/data/repositories/product_details_repository_impl.dart'
    as _i693;
import 'package:mahmoud_task_trust/features/product_details/domain/repositories/product_details_repository.dart'
    as _i857;
import 'package:mahmoud_task_trust/features/product_details/domain/usecases/get_product_addons.dart'
    as _i69;
import 'package:mahmoud_task_trust/features/product_details/domain/usecases/get_product_details.dart'
    as _i507;
import 'package:mahmoud_task_trust/features/product_details/presentation/cubit/product_details_cubit.dart'
    as _i384;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final storageModule = _$StorageModule();
    final dioModule = _$DioModule();
    final cubitModule = _$CubitModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => storageModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i361.Dio>(() => dioModule.dio);
    gh.lazySingleton<_i634.GuestIdService>(
        () => _i634.GuestIdService(gh<_i460.SharedPreferences>()));
    gh.singleton<_i676.AppPreferences>(
        () => _i634.AppPreferencesImpl(gh<_i460.SharedPreferences>()));
    gh.lazySingleton<_i480.ApiClient>(() => _i480.ApiClient(gh<_i361.Dio>()));
    gh.lazySingleton<_i464.LanguageCubit>(
        () => cubitModule.languageCubit(gh<_i676.AppPreferences>()));
    gh.lazySingleton<_i236.CategoriesRemoteDataSource>(() =>
        _i236.CategoriesRemoteDataSourceImpl(apiClient: gh<_i480.ApiClient>()));
    gh.lazySingleton<_i740.ProductDetailsRemoteDataSource>(() =>
        _i740.ProductDetailsRemoteDataSourceImpl(
            apiClient: gh<_i480.ApiClient>()));
    gh.lazySingleton<_i973.CartRemoteDataSource>(
        () => _i973.CartRemoteDataSourceImpl(apiClient: gh<_i480.ApiClient>()));
    gh.lazySingleton<_i952.CategoriesRepository>(
        () => _i318.CategoriesRepositoryImpl(
              remoteDataSource: gh<_i236.CategoriesRemoteDataSource>(),
              appPreferences: gh<_i676.AppPreferences>(),
            ));
    gh.lazySingleton<_i622.CartRepository>(() => _i1064.CartRepositoryImpl(
        remoteDataSource: gh<_i973.CartRemoteDataSource>()));
    gh.lazySingleton<_i410.AddToCart>(
        () => _i410.AddToCart(gh<_i622.CartRepository>()));
    gh.lazySingleton<_i137.DeleteFromCart>(
        () => _i137.DeleteFromCart(gh<_i622.CartRepository>()));
    gh.lazySingleton<_i308.GetCart>(
        () => _i308.GetCart(gh<_i622.CartRepository>()));
    gh.lazySingleton<_i15.GuestIdRemoteDataSource>(() =>
        _i15.GuestIdRemoteDataSourceImpl(apiClient: gh<_i480.ApiClient>()));
    gh.lazySingleton<_i201.GetCategories>(
        () => _i201.GetCategories(gh<_i952.CategoriesRepository>()));
    gh.factory<_i910.CartCubit>(() => _i910.CartCubit(
          getCartUseCase: gh<_i308.GetCart>(),
          addToCartUseCase: gh<_i410.AddToCart>(),
          deleteFromCartUseCase: gh<_i137.DeleteFromCart>(),
          guestIdService: gh<_i634.GuestIdService>(),
        ));
    gh.lazySingleton<_i857.ProductDetailsRepository>(
        () => _i693.ProductDetailsRepositoryImpl(
              remoteDataSource: gh<_i740.ProductDetailsRemoteDataSource>(),
              appPreferences: gh<_i676.AppPreferences>(),
            ));
    gh.lazySingleton<_i806.GuestIdRepository>(() => _i563.GuestIdRepositoryImpl(
          remoteDataSource: gh<_i15.GuestIdRemoteDataSource>(),
          guestIdService: gh<_i634.GuestIdService>(),
        ));
    gh.lazySingleton<_i69.GetProductAddons>(
        () => _i69.GetProductAddons(gh<_i857.ProductDetailsRepository>()));
    gh.lazySingleton<_i507.GetProductDetails>(
        () => _i507.GetProductDetails(gh<_i857.ProductDetailsRepository>()));
    gh.lazySingleton<_i259.GetGuestId>(
        () => _i259.GetGuestId(gh<_i806.GuestIdRepository>()));
    gh.factory<_i346.CategoriesCubit>(
        () => _i346.CategoriesCubit(getCategories: gh<_i201.GetCategories>()));
    gh.factory<_i384.ProductDetailsCubit>(() => _i384.ProductDetailsCubit(
          getProductDetails: gh<_i507.GetProductDetails>(),
          getProductAddons: gh<_i69.GetProductAddons>(),
        ));
    return this;
  }
}

class _$StorageModule extends _i634.StorageModule {}

class _$DioModule extends _i480.DioModule {}

class _$CubitModule extends _i55.CubitModule {}
