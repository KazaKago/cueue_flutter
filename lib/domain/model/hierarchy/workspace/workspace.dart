import 'package:cueue/domain/model/hierarchy/workspace/workspace_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workspace.freezed.dart';

@freezed
class Workspace with _$Workspace {
  const factory Workspace({
    required final WorkspaceId id,
    required final String name,
  }) = _Workspace;
}
