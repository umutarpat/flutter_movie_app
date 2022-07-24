import 'package:flutter/material.dart';

class GlobalImageBox extends StatelessWidget {
  String? path;
  GlobalImageBox({required this.path});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://image.tmdb.org/t/p/original${path}",
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        return Container();
      },
    );
  }
}
