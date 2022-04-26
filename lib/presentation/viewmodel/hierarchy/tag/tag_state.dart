import 'package:cueue/domain/model/hierarchy/tag/tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag_state.freezed.dart';

@freezed
class TagState with _$TagState {
  const factory TagState.loading() = _Loading;

  const factory TagState.empty() = _Empty;

  const factory TagState.completed(List<Tag> tags) = _Completed;

  const factory TagState.error(Exception error) = _Error;
}
