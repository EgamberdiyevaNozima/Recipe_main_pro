import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:recipe_project_0/core/routing/routes.dart';
import '../../data/models/top_chef_model_small.dart';
import '../../features/categories/managers/categories_cubit.dart';
import '../../features/categories/pages/categories_view.dart';
import '../../features/category_detail/manager/category_detail_view_model.dart';
import '../../features/category_detail/pages/category_detail_view.dart';
import '../../features/community/manager/community_cubit.dart';
import '../../features/community/pages/community_view.dart';
import '../../features/home/manager/home_view_model.dart';
import '../../features/home/pages/home_view.dart';
import '../../features/recipe_detail/manager/recipe_detail_view_model.dart';
import '../../features/recipe_detail/pages/recipe_detail_view.dart';
import '../../features/reviews/managers/create_review/create_review_bloc.dart';
import '../../features/reviews/managers/reviews/reviews_bloc.dart';
import '../../features/reviews/pages/create_review_view.dart';
import '../../features/reviews/pages/reviews_view.dart';
import '../../features/top_chef/manager/top_chef_bloc.dart';
import '../../features/top_chef/pages/top_chef_page.dart';

final router = GoRouter(
  initialLocation: Routes.getCreateReview(8 ),

  routes: [
    GoRoute(
      path: Routes.home,
      builder: (context, state) => BlocProvider(
        create: (context) => HomeBloc(
          catRepo: context.read(),
          recipeRepo: context.read(),
          chefRepo: context.read(),
        ),
        child: HomeView(),
      ),
    ),
    GoRoute(
      path: Routes.community,
      builder: (context, state) => BlocProvider(
        create: (context) => CommunityCubit(recipeRepo: context.read()),
        child: CommunityView(),
      ),
    ),
    GoRoute(
      path: Routes.categories,
      builder: (context, state) => BlocProvider(
        create: (context) => CategoriesBloc(catRepo: context.read()),
        child: CategoriesView(),
      ),
    ),
    GoRoute(
      path: Routes.categoryDetail,
      builder: (context, state) => BlocProvider(
        create: (context) => CategoryDetailBloc(
          catRepo: context.read(),
          recipeRepo: context.read(),
          selectedId: int.parse(state.pathParameters['categoryId']!),
        ),
        child: CategoryDetailView(),
      ),
    ),
    GoRoute(
      path: Routes.recipeDetail,
      builder: (context, state) => ChangeNotifierProvider(
        create: (context) => RecipeDetailViewModel(
          recipeRepo: context.read(),
          recipeId: int.parse(state.pathParameters['recipeId']!),
        ),
        child: RecipeDetailView(),
      ),
    ),
    GoRoute(
      path: Routes.reviews,
      builder: (context, state) => BlocProvider(
        create: (context) => ReviewsBloc(
          recipeRepo: context.read(),
          reviewRepo: context.read(),
          recipeId: int.parse(state.pathParameters['recipeId']!),
        ),
        child: ReviewsView(),
      ),
    ),
    GoRoute(
      path: Routes.createReview,
      builder: (context, state) => BlocProvider(
        create: (context) => CreateReviewBloc(
          recipeRepo: context.read(),
          reviewRepo: context.read(),
        )..add(CreateReviewLoading(recipeId: int.parse(state.pathParameters['recipeId']!))),
        child: CreateReviewView(),
      ),
    ),

    // GoRoute(
    //   path: Routes.topChef,
    //   builder: (context, state) => TopChefsView(),
    // ),



  ],
);
