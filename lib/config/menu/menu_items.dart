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
    title: "Reverpot", 
    subtitle: "introducción a riverpot", 
    link: "/counter-screen", 
    icon: Icons.add
  ),
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
  MenuItems(
    title: "Animated container", 
    subtitle: "Stateful widget animado", 
    link: "/animated", 
    icon: Icons.check_box_outline_blank_rounded
  ),
  MenuItems(
    title: "UI controls + tiles", 
    subtitle: "Una serie de controles de flutter", 
    link: "/ui-controls", 
    icon: Icons.car_rental_outlined
  ),
  MenuItems(
    title: "Introducción a la aplicación", 
    subtitle: "Pequeño tutorial introductorio", 
    link: "/tutorial", 
    icon: Icons.accessible_rounded
  ),
  MenuItems(
    title: "Infinite scroll y pull", 
    subtitle: "Listas infinitas y pull to refresh", 
    link: "/infinite", 
    icon: Icons.list_alt_rounded
  ),
  MenuItems(
    title: "Cambiar tema", 
    subtitle: "Cambiar tema de la aplicación", 
    link: "/theme-changer", 
    icon: Icons.color_lens_outlined
  ),

];