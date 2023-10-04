import 'package:flutter/material.dart';
class ImageWidget extends StatelessWidget {
  String image ;
  var function ;
   ImageWidget({required this.image,this.function,super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(onTap: function,
        child: Image(image: AssetImage('assets/$image.jpg'),height: 100,));

  }
}
