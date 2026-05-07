import 'package:shipa_tracking/lib.dart';

ThemeData buildLightTheme() {
  return ThemeData(
    useMaterial3: true,

    scaffoldBackgroundColor: AppColors.whiteColor,
    // primarySwatch: Colors.grey,
    primaryColor: AppColors.whiteColor,
    brightness: Brightness.light,
    dividerColor: AppColors.whiteColor,
    splashColor: AppColors.transparent,
    highlightColor: AppColors.transparent,
    cardColor: AppColors.transparent,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.whiteColor),
    // colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
    bottomSheetTheme: BottomSheetThemeData(
      surfaceTintColor: AppColors.whiteColor,
      backgroundColor: AppColors.whiteColor,
      modalBarrierColor: AppColors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
      ),
    ),
    textTheme: GoogleFonts.interTextTheme().copyWith(
      displayLarge: TextStyle(
        fontSize: 56.sp,
        fontWeight: FontWeight.bold,
      ), // Equivalent to H1
      displayMedium: TextStyle(
        fontSize: 48.sp,
        fontWeight: FontWeight.bold,
      ), // H2
      displaySmall: TextStyle(
        fontSize: 40.sp,
        fontWeight: FontWeight.bold,
      ), // H3
      headlineMedium: TextStyle(
        fontSize: 36.sp,
        fontWeight: FontWeight.bold,
      ), // H4
      headlineSmall: TextStyle(
        fontSize: 30.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryColor,
      ), // H5
      titleLarge: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold), // H6
      bodyLarge: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor,
      ), // Paragraph
      bodyMedium: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor,
      ),
      labelLarge: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.whiteColor,
      ), // Button/Text labels
    ),
    dialogTheme: const DialogThemeData(
      backgroundColor: AppColors.whiteColor,
      surfaceTintColor: Colors.transparent,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.whiteColor,
      // color: AppColors.whiteColor,
      shadowColor: AppColors.transparent,
      elevation: 0.0,
      surfaceTintColor: AppColors.whiteColor,
      titleTextStyle: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.textColor,
      ),
      // color: AppColors.scaffoldColor,
    ),
    iconTheme: IconThemeData(size: 24.sp, color: AppColors.primaryColor),
    iconButtonTheme: IconButtonThemeData(),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.secondaryColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.primaryColor.withValues(alpha: 0.3),
      selectedIconTheme: IconThemeData(
        color: AppColors.primaryColor,
        size: 30.sp,
      ),
      unselectedIconTheme: IconThemeData(
        color: AppColors.primaryColor.withValues(alpha: 0.3),

        size: 24.sp,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 14.sp,
        // fontSize: 9.sp,
        fontWeight: FontWeight.normal,
      ),
      selectedLabelStyle: TextStyle(
        fontSize: 14.sp,
        // fontSize: 9.sp,
        fontWeight: FontWeight.w600,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.transparent,
      contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      hintStyle: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.normal,
        color: AppColors.textColor,
      ),
      errorStyle: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.normal,
        color: AppColors.secondaryColor,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: AppColors.grey900),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: AppColors.grey900),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: AppColors.primaryColor),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: AppColors.secondaryColor),
      ),
    ),
  );
}

ThemeData buildDarkTheme() {
  return ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.whiteColor,
    // primarySwatch: Colors.grey,
    primaryColor: AppColors.whiteColor,
    brightness: Brightness.light,
    dividerColor: AppColors.whiteColor,
    splashColor: AppColors.transparent,
    highlightColor: AppColors.transparent,
    cardColor: AppColors.transparent,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.whiteColor),
    // colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
    bottomSheetTheme: BottomSheetThemeData(
      surfaceTintColor: AppColors.whiteColor,
      backgroundColor: AppColors.whiteColor,
      modalBarrierColor: AppColors.primaryColor.withValues(alpha: 0.34),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
      ),
    ),
    // iconTheme: IconThemeData(
    //   color:
    // ),
    textTheme: GoogleFonts.interTextTheme().copyWith(
      displayLarge: TextStyle(
        fontSize: 56.sp,
        fontWeight: FontWeight.bold,
      ), // Equivalent to H1
      displayMedium: TextStyle(
        fontSize: 48.sp,
        fontWeight: FontWeight.bold,
      ), // H2
      displaySmall: TextStyle(
        fontSize: 40.sp,
        fontWeight: FontWeight.bold,
      ), // H3
      headlineMedium: TextStyle(
        fontSize: 36.sp,
        fontWeight: FontWeight.bold,
      ), // H4
      headlineSmall: TextStyle(
        fontSize: 30.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryColor,
      ), // H5
      titleLarge: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold), // H6
      bodyLarge: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.normal,
        color: AppColors.textColor,
      ), // Paragraph
      bodyMedium: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.textColor,
      ),
      labelLarge: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.whiteColor,
      ), // Button/Text labels
    ),
    dialogTheme: const DialogThemeData(
      backgroundColor: AppColors.whiteColor,
      surfaceTintColor: Colors.transparent,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.whiteColor,
      // color: AppColors.whiteColor,
      shadowColor: AppColors.transparent,
      elevation: 0.0,
      surfaceTintColor: AppColors.whiteColor,
      titleTextStyle: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.textColor,
      ),
      // color: AppColors.scaffoldColor,
    ),
    iconTheme: IconThemeData(size: 24.sp, color: AppColors.primaryColor),
    iconButtonTheme: IconButtonThemeData(),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.secondaryColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.primaryColor.withValues(alpha: 0.3),
      selectedIconTheme: IconThemeData(
        color: AppColors.primaryColor,
        size: 30.sp,
      ),
      unselectedIconTheme: IconThemeData(
        color: AppColors.primaryColor.withValues(alpha: 0.3),

        size: 24.sp,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 14.sp,
        // fontSize: 9.sp,
        fontWeight: FontWeight.normal,
      ),
      selectedLabelStyle: TextStyle(
        fontSize: 14.sp,
        // fontSize: 9.sp,
        fontWeight: FontWeight.w600,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.transparent,
      contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      hintStyle: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.normal,
        color: AppColors.textColor,
      ),
      errorStyle: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.normal,
        color: AppColors.secondaryColor,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: AppColors.grey900),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: AppColors.grey900),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: AppColors.primaryColor),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: AppColors.secondaryColor),
      ),
    ),
  );
}
