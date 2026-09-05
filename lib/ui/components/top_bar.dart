import 'package:flutter/material.dart';


class SpaceTopBar extends StatelessWidget implements PreferredSizeWidget {
  final String titulo;
  final List<Widget>? actions;

  const SpaceTopBar({super.key, required this.titulo, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(titulo),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
