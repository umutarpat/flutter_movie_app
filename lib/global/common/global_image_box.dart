import 'package:flutter/material.dart';

class GlobalImageBox extends StatelessWidget {
  String? path;
  BoxFit? fit;
  GlobalImageBox({required this.path, this.fit = BoxFit.cover});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://image.tmdb.org/t/p/original${path}",
      fit: fit,
      errorBuilder: (context, error, stackTrace) {
        return Container();
      },
    );
  }
}
