import 'package:flutter/material.dart';

class HorizontalMenuWidget extends StatefulWidget {
  const HorizontalMenuWidget({
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
  State<HorizontalMenuWidget> createState() => _HorizontalMenuWidgetState();
}

class _HorizontalMenuWidgetState extends State<HorizontalMenuWidget> {
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
      child: Container(
        color:
            isHovering || widget.isActive ? Colors.white : Colors.transparent,
        child: ListTile(
          onTap: widget.onTap,
          hoverColor: Colors.white,
          leading: Icon(
            widget.iconData,
            color: isHovering || widget.isActive ? Colors.blue : Colors.black45,
          ),
          title: Text(
            widget.title,
            style: TextStyle(
              fontWeight: isHovering || widget.isActive
                  ? FontWeight.bold
                  : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
