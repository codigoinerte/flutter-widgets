// Estado => isDarkmodeProvider = boolean

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// un simple boolean
final isDarkmodeProvider = StateProvider((ref) => false);

// Listado de colores inmutables : Provider = para valores inmutables
final colorListProvider = Provider((ref) => colorList);

// un simple int : StateProvider = para mantener alguna pieza de estado
final selectedColorProvider =StateProvider((ref) => 0);

// un objeto de tipo AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

// Controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme>{
  //STATE = Estado = new AppTheme();
  ThemeNotifier()
    :super(AppTheme());

  void toggleDarkmode(){
    state = state.copyWith(isDarkmode: !state.isDarmode);
  }

  void changeColorIndex(int colorIndex){
    state = state.copyWith(selectedColor: colorIndex);
  }

}