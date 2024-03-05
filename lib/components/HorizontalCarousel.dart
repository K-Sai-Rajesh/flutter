import 'package:flutter/material.dart';

class HorizontalCarousel extends StatelessWidget {
  const HorizontalCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          Categories(
              image_caption: 'images', image_location: 'images/1.jpg'),
          Categories(
              image_caption: 'images', image_location: 'images/2.jpg'),
          Categories(
              image_caption: 'images', image_location: 'images/3.jpg'),
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  final String image_location;
  final String image_caption;
  const Categories(
      {super.key, required this.image_caption, required this.image_location});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
          onTap: () => {},
          child: SizedBox(
            width: 100.0,
            child: ListTile(
              title: Image.asset(
                image_location,
                width: 150,
                height: 80,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.all(8.0),
                child: Text(image_caption),
              ),
            ),
          )),
    );
  }
}
