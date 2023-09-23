import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {

  static const name = 'snackbar_screen';

  const SnackBarScreen({super.key});


  void showCustomSnackBar (BuildContext context){

      ScaffoldMessenger.of(context).clearSnackBars();

      final snackBar = SnackBar(
        content: const Text('Hola mundo'),
        action:  SnackBarAction(label: 'Cerrar', onPressed: (){}),
        duration: const Duration(seconds: 2),

      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog (BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) => AlertDialog(
        title: const Text("¿Estas seguro?"),
        content: const Text("Enim ut do excepteur deserunt pariatur laboris. Ex ullamco officia commodo sit dolor minim proident duis ut. Eiusmod velit esse officia nisi cupidatat culpa fugiat ea. Veniam ea et exercitation in."),
        actions: [
          TextButton(
            onPressed: ()=> context.pop(), 
            child: const Text("Cancelar")
          ),
          FilledButton(
            onPressed: ()=> context.pop(), 
            child: const Text("Aceptar")
          ),
        ],
      ));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbar y Dialogos"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(onPressed: (){
              showAboutDialog(
                context: context,
                children: [
                  const Text("Officia consectetur pariatur qui sunt cillum fugiat nisi cillum dolore ullamco commodo reprehenderit voluptate. Sit ipsum mollit voluptate voluptate enim aute do ut id nisi. Laborum ut cupidatat occaecat pariatur Lorem. Ullamco sit ad proident est. Est elit anim velit magna irure laboris proident reprehenderit qui velit veniam cillum quis sit. Dolore qui nisi do sit ut do ad ut ea.")
                ]
              );
            }, child: const Text("Licencias usadas")),
            FilledButton(
              onPressed: () => openDialog(context), 
              child: const Text("Mostrar diálogo"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: ()=> showCustomSnackBar(context), 
        label: const Text("Mostrar snackbar"), 
        icon: const Icon(Icons.remove_red_eye_outlined)
      ),
    );
  }
}