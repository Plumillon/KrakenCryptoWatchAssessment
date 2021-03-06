// Mocks generated by Mockito 5.0.17 from annotations
// in kraken_crypto_watch/test/presentation/mappers/book_model_mapper_test.dart.
// Do not manually edit this file.

import 'package:kraken_crypto_watch/domain/entities/book_entity.dart' as _i3;
import 'package:kraken_crypto_watch/presentation/mappers/side_model_mapper.dart'
    as _i2;
import 'package:kraken_crypto_watch/presentation/models/book_model.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

/// A class which mocks [SideModelMapper].
///
/// See the documentation for Mockito's code generation for more information.
class MockSideModelMapper extends _i1.Mock implements _i2.SideModelMapper {
  MockSideModelMapper() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Side mapFrom(_i4.Side? from) =>
      (super.noSuchMethod(Invocation.method(#mapFrom, [from]),
          returnValue: _i3.Side.bid) as _i3.Side);
  @override
  _i4.Side mapTo(_i3.Side? to) =>
      (super.noSuchMethod(Invocation.method(#mapTo, [to]),
          returnValue: _i4.Side.bid) as _i4.Side);
}
