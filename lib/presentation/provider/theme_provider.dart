import 'package:shipa_tracking/lib.dart';

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeData>((ref) {
  return ThemeNotifier(ref);
});

class ThemeNotifier extends StateNotifier<ThemeData> {
  final Ref ref;

  ThemeNotifier(this.ref) : super(buildLightTheme());

  // void setTheme() {

  //   state = buildLightTheme();
  // }
}
