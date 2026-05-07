import 'package:shipa_tracking/lib.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ProviderScope(
      
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) {
        final mediaQuery = MediaQuery.of(context);
        final theme = ref.watch(themeProvider);
        return MediaQuery(
          data: mediaQuery.copyWith(textScaler: const TextScaler.linear(1.1)),
          child: MaterialApp(
            title: 'Shipa Tracking',
            debugShowCheckedModeBanner: false,
            theme: theme,
            home: HomeScreen(),
          ),
        );
      }
    );
  }
}
