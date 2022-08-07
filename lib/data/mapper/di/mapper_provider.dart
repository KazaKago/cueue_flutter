import 'package:cueue/data/mapper/hierarchy/content/content_request_mapper.dart';
import 'package:cueue/data/mapper/hierarchy/content/content_response_mapper.dart';
import 'package:cueue/data/mapper/hierarchy/menu/menu_request_mapper.dart';
import 'package:cueue/data/mapper/hierarchy/menu/menu_response_mapper.dart';
import 'package:cueue/data/mapper/hierarchy/menu/menu_summary_response_mapper.dart';
import 'package:cueue/data/mapper/hierarchy/menu/time_frame_request_mapper.dart';
import 'package:cueue/data/mapper/hierarchy/menu/time_frame_response_mapper.dart';
import 'package:cueue/data/mapper/hierarchy/recipe/recipe_request_mapper.dart';
import 'package:cueue/data/mapper/hierarchy/recipe/recipe_response_mapper.dart';
import 'package:cueue/data/mapper/hierarchy/recipe/recipe_summary_response_mapper.dart';
import 'package:cueue/data/mapper/hierarchy/tag/tag_order_request_mapper.dart';
import 'package:cueue/data/mapper/hierarchy/tag/tag_request_mapper.dart';
import 'package:cueue/data/mapper/hierarchy/tag/tag_response_mapper.dart';
import 'package:cueue/data/mapper/hierarchy/user/user_response_mapper.dart';
import 'package:cueue/data/mapper/hierarchy/user/user_summary_response_mapper.dart';
import 'package:cueue/data/mapper/hierarchy/workspace/workspace_response_mapper.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final contentResponseMapperProvider = Provider((ref) => const ContentResponseMapper());
final contentRequestMapperProvider = Provider((ref) => const ContentRequestMapper());
final userResponseMapperProvider = Provider((ref) => UserResponseMapper(ref.read(workspaceResponseMapperProvider)));
final userSummaryResponseMapperProvider = Provider((ref) => const UserSummaryResponseMapper());
final workspaceResponseMapperProvider = Provider((ref) => WorkspaceResponseMapper(ref.read(userSummaryResponseMapperProvider)));
final tagResponseMapperProvider = Provider((ref) => const TagResponseMapper());
final tagRequestMapperProvider = Provider((ref) => const TagRequestMapper());
final recipeResponseMapperProvider = Provider((ref) => RecipeResponseMapper(ref.read(tagResponseMapperProvider), ref.read(contentResponseMapperProvider)));
final recipeSummaryResponseMapperProvider = Provider((ref) => RecipeSummaryResponseMapper(ref.read(contentResponseMapperProvider)));
final recipeRequestMapperProvider = Provider((ref) => const RecipeRequestMapper());
final menuSummaryResponseMapperProvider = Provider((ref) => MenuSummaryResponseMapper(ref.read(timeFrameResponseMapperProvider), ref.read(recipeSummaryResponseMapperProvider)));
final menuResponseMapperProvider = Provider((ref) => MenuResponseMapper(ref.read(timeFrameResponseMapperProvider), ref.read(recipeSummaryResponseMapperProvider)));
final menuRequestMapperProvider = Provider((ref) => MenuRequestMapper(ref.read(timeFrameRequestMapperProvider)));
final timeFrameResponseMapperProvider = Provider((ref) => const TimeFrameResponseMapper());
final timeFrameRequestMapperProvider = Provider((ref) => const TimeFrameRequestMapper());
final tagOrderRequestMapperProvider = Provider((ref) => const TagOrderRequestMapper());
