import 'package:flutter/material.dart';

/// Configuration for how text is displayed: font, fill color, stroke (border), and shadows.
/// Use [AppFonts] to get predefined styles or build custom ones.
class FontDisplayStyle {
  const FontDisplayStyle({
    this.baseStyle,
    this.fontFamily,
    this.fontSize = 14,
    this.fontWeight = FontWeight.normal,
    this.letterSpacing = 0,
    this.color = Colors.black,
    this.strokeColor,
    this.strokeWidth = 0,
    this.shadows = const [],
  });

  /// Base [TextStyle] (e.g. from [AppFonts.myFont]). If set, overrides fontFamily/fontSize/fontWeight/letterSpacing.
  final TextStyle? baseStyle;

  /// Font family name when [baseStyle] is null.
  final String? fontFamily;

  final double fontSize;
  final FontWeight fontWeight;
  final double letterSpacing;

  /// Fill color of the text.
  final Color color;

  /// Stroke (border) color. If null, no stroke is drawn.
  final Color? strokeColor;

  /// Stroke width in logical pixels. Used only when [strokeColor] is not null.
  final double strokeWidth;

  /// Drop shadow(s). Can be empty.
  final List<Shadow> shadows;

  TextStyle get _resolvedStyle {
    if (baseStyle != null) {
      return baseStyle!.copyWith(
        color: color,
        shadows: shadows.isEmpty ? null : shadows,
      );
    }
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: fontSize,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      color: color,
      shadows: shadows.isEmpty ? null : shadows,
    );
  }

  /// Returns a [Widget] that paints the text with fill, optional stroke, and shadows.
  Widget buildText(String text, {TextAlign? textAlign}) {
    if (strokeColor != null && strokeWidth > 0) {
      return Stack(
        children: [
          Text(
            text,
            textAlign: textAlign,
            style: _resolvedStyle.copyWith(
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = strokeWidth
                ..color = strokeColor!,
            ),
          ),
          Text(
            text,
            textAlign: textAlign,
            style: _resolvedStyle,
          ),
        ],
      );
    }
    return Text(
      text,
      textAlign: textAlign,
      style: _resolvedStyle,
    );
  }

  /// Returns a plain [TextStyle] (fill color + shadows only). Use when you don't need stroke.
  TextStyle toTextStyle() => _resolvedStyle;

  /// Returns a copy with the given fields replaced.
  FontDisplayStyle copyWith({
    TextStyle? baseStyle,
    String? fontFamily,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    Color? color,
    Color? strokeColor,
    double? strokeWidth,
    List<Shadow>? shadows,
  }) {
    return FontDisplayStyle(
      baseStyle: baseStyle ?? this.baseStyle,
      fontFamily: fontFamily ?? this.fontFamily,
      fontSize: fontSize ?? this.fontSize,
      fontWeight: fontWeight ?? this.fontWeight,
      letterSpacing: letterSpacing ?? this.letterSpacing,
      color: color ?? this.color,
      strokeColor: strokeColor ?? this.strokeColor,
      strokeWidth: strokeWidth ?? this.strokeWidth,
      shadows: shadows ?? this.shadows,
    );
  }
}

/// Central place for app font and display variables.
/// Define colors, borders (strokes), and shadows here; use [FontDisplayStyle] to build styled text.
class AppFonts {
  AppFonts._();

  // ---------- Colors ----------
  static const Color fillBrown = Color(0xFF442510);
  static const Color strokeCream = Color(0xFFF9F2D7);
  static const Color shadowMauve = Color(0xFFBC8E8E);

  // ---------- Shadow presets ----------
  static const Shadow dropShadowTitle = Shadow(
    offset: Offset(4, 3),
    blurRadius: 9,
    color: shadowMauve,
  );

  /// Dancing Script Regular — use for Splash/Hello body text.
  static const String myFontFamily = 'DancingScriptRegular';
  /// Dancing Script Bold — use for Splash/Hello titles.
  static const String myFontFamilyBold = 'DancingScriptBold';

  // ---------- Predefined styles ----------

  /// "Be With Me" title style: Dancing Script Bold, brown fill, cream stroke 2px, mauve drop shadow.
  static FontDisplayStyle get titleBeWithMe => FontDisplayStyle(
        baseStyle: TextStyle(
          fontFamily: myFontFamilyBold,
          fontSize: 28,
          letterSpacing: 0.5,
        ),
        color: fillBrown,
        strokeColor: strokeCream,
        strokeWidth: 2,
        shadows: const [dropShadowTitle],
      );

  /// Build a custom style with explicit letters (text) and display options.
  static FontDisplayStyle style({
    TextStyle? baseStyle,
    String? fontFamily,
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.normal,
    double letterSpacing = 0,
    required Color color,
    Color? strokeColor,
    double strokeWidth = 0,
    List<Shadow> shadows = const [],
  }) {
    return FontDisplayStyle(
      baseStyle: baseStyle,
      fontFamily: fontFamily,
      fontSize: fontSize,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      color: color,
      strokeColor: strokeColor,
      strokeWidth: strokeWidth,
      shadows: shadows,
    );
  }

  /// Convenience: build a style using Dancing Script Regular.
  static FontDisplayStyle myFont({
    double fontSize = 18,
    double letterSpacing = 0,
    required Color color,
    Color? strokeColor,
    double strokeWidth = 0,
    List<Shadow> shadows = const [],
  }) {
    return FontDisplayStyle(
      fontFamily: myFontFamily,
      fontSize: fontSize,
      fontWeight: FontWeight.normal,
      letterSpacing: letterSpacing,
      color: color,
      strokeColor: strokeColor,
      strokeWidth: strokeWidth,
      shadows: shadows,
    );
  }

  /// Convenience: build a style using Dancing Script Bold.
  static FontDisplayStyle myFontBold({
    double fontSize = 18,
    double letterSpacing = 0,
    required Color color,
    Color? strokeColor,
    double strokeWidth = 0,
    List<Shadow> shadows = const [],
  }) {
    return FontDisplayStyle(
      fontFamily: myFontFamilyBold,
      fontSize: fontSize,
      fontWeight: FontWeight.normal,
      letterSpacing: letterSpacing,
      color: color,
      strokeColor: strokeColor,
      strokeWidth: strokeWidth,
      shadows: shadows,
    );
  }
}
