import 'package:flutter/material.dart';

class VerticalMenu extends StatefulWidget {
  const VerticalMenu({
    Key? key,
    required this.iconData,
    required this.title,
    this.isActive = false,
    this.onTap,
  }) : super(key: key);
  final IconData iconData;
  final String title;
  final VoidCallback? onTap;
  final bool isActive;

  @override
  State<VerticalMenu> createState() => _VerticalMenuState();
}

class _VerticalMenuState extends State<VerticalMenu> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() {
        isHovering = true;
      }),
      onExit: (_) => setState(() {
        isHovering = false;
      }),
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 6),
          color:
              isHovering || widget.isActive ? Colors.white : Colors.transparent,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                widget.iconData,
                color: isHovering || widget.isActive
                    ? Colors.blue
                    : Colors.black45,
              ),
              Visibility(
                visible: isHovering || widget.isActive,
                child: Text(
                  widget.title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
