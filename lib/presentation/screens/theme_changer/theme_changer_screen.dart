import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {

  static const name = 'theme_changer_screen';

  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {

    final isDarkMode = ref.watch(isDarkmodeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme changer"),
        actions: [
          IconButton(
            onPressed: (){
              ref.read(isDarkmodeProvider.notifier).update((state) => !state);
            }, 
            icon: Icon( isDarkMode ? Icons.wb_sunny_outlined : Icons.dark_mode_outlined))
        ],

      ),
      body: _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {

  @override
  Widget build(BuildContext context, ref) {

    final List<Color> colors = ref.watch(colorListProvider);
    final int colorSelected = ref.watch(selectedColorProvider);
    
    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final color = colors[index];
        
        return RadioListTile(
          title: Text('Este color', style: TextStyle(color:color)),
          subtitle: Text('${color.value}'),
          activeColor: color,
          value: index,
          groupValue: colorSelected,
          onChanged: (value){
            //todo: notificar el cambio
            ref.read(selectedColorProvider.notifier).state = index;
          }
        );

      },
    );
  }
}