import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileButton extends StatelessWidget {
  final Icon icon;
  final String title;
  final VoidCallback onTap;
  const ProfileButton({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          // ICONS & TEXT
          Expanded(
            child: Row(
              children: [
                icon,
                const SizedBox(width: 12),
                Text(
                  title,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          // ARROW LEFT
          Icon(Icons.chevron_right_outlined, size: 32),
        ],
      ),
    );
  }
}
