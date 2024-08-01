import 'package:flavor_localizations/barrel.dart';
import 'package:flavor_localizations/core/utils/helpers/main_initialization_helper.dart';
import 'package:flavor_localizations/features/todo/data/repositories/todo_repository.dart';
import 'package:flavor_localizations/features/todo/domain/usecases/todo_usecase.dart';
import 'package:flavor_localizations/features/todo/presentation/blocs/todo_bloc/todo_bloc.dart';

final class MultiBlocHelper {
  getProviders() {
    return [
      BlocProvider(create: (context) => LocalizationBloc()),
      BlocProvider(create: (context) => ThemeChangerCubit()),
      BlocProvider(
          create: (context) => TodoBloc(TodoUsecase(getIt<TodoRepository>())))
    ];
  }
}
