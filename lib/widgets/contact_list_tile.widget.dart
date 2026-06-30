import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactListTile extends StatefulWidget {
  final String title, subtitle;
  final IconData leadingIcon;
  const ContactListTile(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.leadingIcon})
      : super(key: key);

  @override
  State<ContactListTile> createState() => _ContactListTileState();
}

class _ContactListTileState extends State<ContactListTile> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).primaryColor;
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: Row(
          children: [
            AnimatedContainer(
                duration: const Duration(milliseconds: 400),
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                    color: _isHovered
                        ? primary
                        : primary.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(5)),
                padding: const EdgeInsets.all(8),
                child: Icon(
                  widget.leadingIcon,
                  size: 20,
                  color: _isHovered ? Colors.white : primary,
                )),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: GoogleFonts.breeSerif(
                        fontSize: 18,
                        color: primary,
                        fontWeight: FontWeight.w600),
                  ),
                  SelectableText(
                    widget.subtitle,
                    style: TextStyle(color: primary, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
