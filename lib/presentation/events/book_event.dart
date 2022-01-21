import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_event.freezed.dart';

@freezed
class BookEvent with _$BookEvent {
  const factory BookEvent.load() = BookEventLoad;
  const factory BookEvent.resume() = BookEventResume;
  const factory BookEvent.stop() = BookEventStop;
}
