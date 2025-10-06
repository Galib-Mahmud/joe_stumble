import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../app_assert_image.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTabSelected;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    final appAssertImage = AppAssertImage.instance;
    final items = [
      {'icon': Icons.dashboard_outlined, 'label': 'Home\nDashboard'},
      {'icon': Icons.bar_chart, 'label': 'Journal'},
      {'icon': null, 'label': 'SOS'}, // Special case for SOS button
      {'icon': Icons.chat_bubble_outline, 'label': 'Tribe\nChat'},
      {'icon': Icons.apps, 'label': 'Orbit'},
    ];

    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: const Color(0xFF2D3748), // Dark background color
        // borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(items.length, (index) {
          final item = items[index];
          final isSelected = currentIndex == index;

          // Special handling for SOS button (middle item)
          if (index == 2) {
            return GestureDetector(
              onTap: () => onTabSelected(index),
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: const Color(0xFFE67E22), // Orange color
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 3),
                ),
                child: const Center(
                  child: Text(
                    'SOS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          }

          return GestureDetector(
            onTap: () => onTabSelected(index),
            behavior: HitTestBehavior.opaque,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    item['icon'] as IconData,
                    size: 24,
                    color: isSelected ? Colors.white : const Color(0xFF718096),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    item['label'] as String,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 10,
                      color: isSelected ? Colors.white : const Color(0xFF718096),
                      height: 1.2,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}