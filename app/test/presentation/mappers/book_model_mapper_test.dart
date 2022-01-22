import 'package:flutter_test/flutter_test.dart';
import 'package:kraken_crypto_watch/domain/entities/book_entity.dart'
    as book_entity;
import 'package:kraken_crypto_watch/presentation/mappers/book_model_mapper.dart';
import 'package:kraken_crypto_watch/presentation/mappers/side_model_mapper.dart';
import 'package:kraken_crypto_watch/presentation/models/book_model.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'book_model_mapper_test.mocks.dart';

@GenerateMocks([SideModelMapper])
main() {
  // Mock dependencies
  MockSideModelMapper mockMapper = MockSideModelMapper();

  // Mock data
  book_entity.BookEntity entity = book_entity.BookEntity(
      side: book_entity.Side.ask, price: 3.33, quantity: 4.44);
  BookModel model =
      BookModel(side: Side.ask, price: 3.33, quantity: 4.44, percentage: 1);

  // Tested instance
  BookModelMapper mapper = BookModelMapper(mockMapper);

  group('Book model mapper', () {
    test('Map from', () {
      when(mockMapper.mapFrom(any))
          .thenAnswer((realInvocation) => book_entity.Side.ask);

      expect(mapper.mapFrom(model), entity);
      expect(verify(mockMapper.mapFrom(captureAny)).captured.single, Side.ask);
    });

    test('Map to with greatest', () {
      when(mockMapper.mapTo(any)).thenAnswer((realInvocation) => Side.ask);

      expect(mapper.mapToWithGreatest(entity, 4.44), model);
      expect(verify(mockMapper.mapTo(captureAny)).captured.single,
          book_entity.Side.ask);
    });
  });
}
