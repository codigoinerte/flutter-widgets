import 'package:flutter/material.dart';

class MenuItems{
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: "Botones", 
    subtitle: "varios botones en flutter", 
    link: "/buttons", 
    icon: Icons.smart_button_outlined
  ),
  MenuItems(
    title: "Tarjetas", 
    subtitle: "Un contenedor estilizado", 
    link: "/cards", 
    icon: Icons.credit_card
  ),
  MenuItems(
    title: "ProgressIndicators", 
    subtitle: "Generales y controlados", 
    link: "/refresh", 
    icon: Icons.refresh_rounded
  ),
  MenuItems(
    title: "SnackBars", 
    subtitle: "Indicadores en pantalla", 
    link: "/snackbars", 
    icon: Icons.info_outline
  ),
];