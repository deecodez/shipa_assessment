

import 'package:shipa_tracking/lib.dart';

class XBox extends StatelessWidget {
  final double _width;

  const XBox(this._width, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: _width.w);
  }
}

class YBox extends StatelessWidget {
  final double _height;

  const YBox(this._height, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: _height.h);
  }
}

class AppDivider extends StatelessWidget {
  const AppDivider(
    this.indent, {
    this.color,
    this.thickness,
    this.height,
    super.key,
  });

  final double indent;
  final Color? color;
  final double? thickness, height;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color ?? Theme.of(context).textTheme.bodyLarge!.color,
      indent: indent,
      endIndent: indent,
      thickness: thickness ?? 1.w,
      height: height ?? 0.0,
    );
  }
}
