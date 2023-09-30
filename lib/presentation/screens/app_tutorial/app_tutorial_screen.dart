import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}


final slides = <SlideInfo>[
  SlideInfo('Busca la comida', 'Consequat labore excepteur veniam adipisicing mollit excepteur ut Lorem dolore.', 'assets/images/1.png'),
  SlideInfo('Entrega rapida', 'Minim tempor elit sunt enim occaecat nostrud in deserunt aliqua.', 'assets/images/2.png'),
  SlideInfo('Disfruta la comida', 'Velit ullamco eiusmod reprehenderit labore in.', 'assets/images/3.png'),
];


class AppTutorialScreen extends StatefulWidget {

  static const name = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {

  final PageController pageViewController = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();

    pageViewController.addListener(() {

      final page = pageViewController.page ?? 0;
      if(!endReached && page >=(slides.length - 1.5)){
        setState(() {
          endReached = true;
        });
      }

    });

  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
            physics: const BouncingScrollPhysics(),
            children: slides.map((slideData) => _slide(title: slideData.title, caption: slideData.caption, imageUrl: slideData.imageUrl)).toList(),
          ),
          Positioned(
            right: 20,
            top: 50,
            child: 
              TextButton(
                child: const Text("salir"),
                onPressed: ()=> context.pop(),
              ),
          ),

          endReached ? Positioned(
            bottom: 30,
            right: 30,
            child: FadeInRight(
              from: 15,
              delay: const Duration(milliseconds: 250),
              child: FilledButton(
                onPressed: () => context.pop(),
                child: const Text("comenzar"),
              ),
            )
          ) :  const SizedBox()

        ],



      ),

    );
  }
}


class _slide extends StatelessWidget {
  
  final String title;
  final String caption;
  final String imageUrl;

  const _slide({required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {


final titleStyle = Theme.of(context).textTheme.titleLarge;
final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(

      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Image(image: AssetImage(imageUrl),),
           const SizedBox(height: 20,),
           Text(title, style: titleStyle,),
           const SizedBox(height: 10,),
           Text(caption, style: captionStyle),
          ],
        ),
      ),

    );
  }
}