import 'package:flutter/material.dart';

enum AppColors {
  primaryCTAColor('Primary CTA', Color(0xFF1570EF)),
  totalReturnedColor('Total Returned Color', Color(0xFF845EBC)),
  totalProductsColor('Total Products Color', Color(0xFFDBA362)),
  inStockColor('In Stock Color', Color(0xFF12B76A)),
  outOfStockColor('Out of Stock Color', Color(0xFFF04438)),
  borderColor('Border Color', Color(0xFFF0F1F3)),
  headingColor('Heading Color',Color(0xFF383E49)),
  subHeadingColor('Sub Heading Color', Color(0xFF5D6679)),
  bodyColor('Body Color', Color(0xFF858D9D));

  final String label;
  final Color color;

  const AppColors(this.label, this.color);
}