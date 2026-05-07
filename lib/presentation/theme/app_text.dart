import 'package:shipa_tracking/lib.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final AppTextType type;
  final bool? softWrap; 

const AppText.body(
    this.text, {
    super.key,
    this.fontSize,
    this.textColor,
    this.fontWeight,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.style,
    this.fontFamily,
    this.softWrap,
  }) : type = AppTextType.body;
  const AppText.buttonText(
    this.text, {
    super.key,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.style,
    this.fontFamily,
    this.softWrap,
  }): type = AppTextType.button;

  const AppText.heading1(
    this.text, {
    super.key,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.style,
     this.fontFamily,
     this.softWrap
  }) : type = AppTextType.heading1;

  const AppText.heading2(
    this.text, {
    super.key,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.style,
     this.fontFamily,
     this.softWrap
  }) : type = AppTextType.heading2;

  const AppText.heading3(
    this.text, {
    super.key,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.style,
     this.fontFamily,
     this.softWrap
  }) : type = AppTextType.heading3;
  const AppText.heading4(
    this.text, {
    super.key,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.style,
     this.fontFamily,
     this.softWrap,
  }) : type = AppTextType.heading4;
  const AppText.heading5(
    this.text, {
    super.key,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.style,
     this.fontFamily,
     this.softWrap,
  }) : type = AppTextType.heading5;
  const AppText.heading6(
    this.text, {
    super.key,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.style,
     this.fontFamily,
     this.softWrap,
  }) : type = AppTextType.heading6;

  const AppText.caption(
    this.text, {
    super.key,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.style,
     this.fontFamily,
     this.softWrap,
  }) : type = AppTextType.caption;

  const AppText.custom(
    this.text, {
    super.key,
    required this.style,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.maxLines,
    this.overflow,
     this.fontFamily,
     this.softWrap,
  }): type = AppTextType.custom;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    TextStyle baseStyle;
    switch (type) {
      case AppTextType.body:
        baseStyle = textTheme.bodyLarge!;
        break;
      case AppTextType.heading1:
        baseStyle = textTheme.displayLarge!;
        break;
      case AppTextType.heading2:
        baseStyle = textTheme.displayMedium!;
        break;
      case AppTextType.heading3:
        baseStyle = textTheme.displaySmall!;
        break;
      case AppTextType.heading4:
        baseStyle = textTheme.headlineMedium!;
        break;
      case AppTextType.heading5:
        baseStyle = textTheme.headlineSmall!;
        break;
      case AppTextType.heading6:
        baseStyle = textTheme.titleLarge!;
        break;
      case AppTextType.caption:
        baseStyle = textTheme.bodySmall!;
        break;
      case AppTextType.button:
        baseStyle = textTheme.labelLarge!;
        break;
      case AppTextType.custom:
        baseStyle = textTheme.bodyLarge!;
        break;
    }

    return Text(
      text,
      maxLines: maxLines,
      textAlign: textAlign ?? TextAlign.start,
      overflow: overflow,
      softWrap: softWrap,
      style: (style ?? baseStyle).copyWith(
        color: textColor ?? baseStyle.color,
        fontSize: fontSize ?? baseStyle.fontSize,
        fontWeight: fontWeight ?? baseStyle.fontWeight,
        fontFamily: fontFamily??baseStyle.fontFamily,
        // softWrap: softWrap??baseStyle.softWrap,
        
      ),
    );
  }
}