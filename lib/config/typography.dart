import 'package:flutter/material.dart';

///
/// List of Gojek static Text Style
///
class GojekTypography {
  // font
  static String _sfProDislpay = 'SF-Pro-Display';

  /// SF Pro Display Font
  static final TextStyle primary = TextStyle(
    fontFamily: _sfProDislpay,
  );

  /// SF Pro Display Regular 12.5
  static final TextStyle regular12_5 = primary.copyWith(
    fontSize: 12.5,
  );

  /// SF Pro Display Regular 14
  static final TextStyle regular14 = regular12_5.copyWith(
    fontSize: 14,
    letterSpacing: 0.4,
  );

  /// SF Pro Display Regular 14
  static final TextStyle regular14_line_spaccing_140 = regular12_5.copyWith(
    fontSize: 14.4,
    letterSpacing: 0.4,
  );

  /// SF Pro Display Semibold 11.5
  static final TextStyle semibold11_5 = primary.copyWith(
    fontSize: 11.5,
    fontWeight: FontWeight.w600,
  );

  /// SF Pro Display Semibold 12.5
  static final TextStyle semibold12_5 = semibold11_5.copyWith(
    fontSize: 12.5,
    fontWeight: FontWeight.w600,
  );

  /// SF Pro Display Semibold 14
  static final TextStyle semibold14 = semibold12_5.copyWith(
    fontSize: 14,
    letterSpacing: 0.1,
  );

  /// SF Pro Display Bold 14
  static final TextStyle bold14 = regular12_5.copyWith(
    fontWeight: FontWeight.w700,
    fontSize: 14,
    letterSpacing: 0.1,
  );

  /// SF Pro Display Bold 16
  static final TextStyle bold16 = bold14.copyWith(
    fontSize: 16,
  );

  /// SF Pro Display Bold 16
  static final TextStyle bold16_letter_spacing = bold16.copyWith(
    fontWeight: FontWeight.w700,
  );

  /// SF Pro Display Bold 18
  static final TextStyle bold18 = bold16.copyWith(
    fontSize: 18,
    letterSpacing: -0.5,
  );

  /// SF Pro Display Bold 24
  static final TextStyle bold24 = bold18.copyWith(
    fontSize: 24,
    letterSpacing: -0.2,
  );
}
