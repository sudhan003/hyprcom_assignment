import 'package:hyprcom_assignment/all_imports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) => generateRoute(settings),
      title: 'Flutter Demo',
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: AppColors.backgroundColor),
        textTheme: TextTheme(
          bodySmall:
              const TextStyle(color: Colors.white54, fontSize: 12, height: 1.5),
          bodyMedium: const TextStyle(color: Colors.white54, fontSize: 16),
          titleMedium: TextStyle(
              color: AppColors.textColor, fontSize: 16, fontFamily: 'Inter'),
          titleLarge: TextStyle(
              color: AppColors.textColor,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontFamily: 'Inter'),
        ),
        scaffoldBackgroundColor: AppColors.backgroundColor,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AuthScreen(),
    );
  }
}
