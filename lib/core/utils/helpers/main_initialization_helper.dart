import 'package:flavor_localizations/features/todo/data/repositories/todo_repository.dart';
import 'package:flavor_localizations/features/todo/data/repositories/todo_sql_db_repository.dart';
import 'package:flavor_localizations/barrel.dart';
import 'package:flavor_localizations/my_app.dart';
import 'package:sqflite/sqflite.dart';
import 'package:get_it/get_it.dart';
import 'package:flavor_localizations/core/services/database_service.dart';

late Database database;
late GetIt getIt;

void serviceLocator({required GetIt i}) {
  i.registerLazySingleton<TodoRepository>(() => TodoSqlDbRepository());
}

mainInitializer() async {
  WidgetsFlutterBinding.ensureInitialized();
  getIt = GetIt.instance;
  serviceLocator(i: getIt);
  await SharedPreferenceHelper().init();
  await DatabaseService().init();
  runApp(MyApp(
    router: NavigationRouter(),
    blocHelper: MultiBlocHelper(),
  ));
}
