import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Imageenetwork extends StatelessWidget {
  const Imageenetwork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cached Network Image'),
      ),
      body: Center(
        child: CachedNetworkImage(
          imageUrl: 'https://picsum.photos/200/300',
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }
}
