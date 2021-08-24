import 'package:cueue/domain/model/hierarchy/content/content.dart';
import 'package:cueue/domain/model/hierarchy/recipe/recipe_id.dart';
import 'package:cueue/domain/model/hierarchy/recipe/recipe_summary.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_summary_impl.freezed.dart';

@freezed
class RecipeSummaryImpl with _$RecipeSummaryImpl implements RecipeSummary {
  const factory RecipeSummaryImpl({
    required final RecipeId id,
    required final String title,
    required final Content? image,
    required final DateTime? lastCookingAt,
  }) = _RecipeSummaryImpl;
}
