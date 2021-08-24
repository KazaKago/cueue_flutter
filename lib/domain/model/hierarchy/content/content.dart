import 'package:cueue/domain/model/hierarchy/content/content_key.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'content.freezed.dart';

@freezed
class Content with _$Content {
  const factory Content({
    required final ContentKey key,
    required final Uri url,
  }) = _Content;
}
