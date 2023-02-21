import 'package:flutter/material.dart';

class LikeButton extends StatefulWidget {
  const LikeButton({super.key});

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool _isFavorited = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        icon: Icon(_isFavorited ? Icons.favorite : Icons.favorite_border),
        iconSize: 25,
        color: Colors.white,
        onPressed: () {
          setState(() {
            _isFavorited = !_isFavorited;
          });
        },
      ),
    );
  }
}