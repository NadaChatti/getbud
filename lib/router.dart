import 'package:getbud/pages/add_expense.dart';
import 'package:getbud/pages/home.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final GoRouter _router;

  AppRouter()
    : _router = GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(path: '/', builder: (context, state) => const HomePage()),
          GoRoute(
            path: '/add-expense',
            builder: (context, state) => const AddExpense(),
          ),
        ],
      );

  GoRouter get router => _router;
}
