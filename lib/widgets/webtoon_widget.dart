import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:toonflix/screens/detail_screen.dart';

class Webtoon extends StatelessWidget {
  final String title, thumb, id;

  const Webtoon({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              title: title,
              thumb: thumb,
              id: id,
            ),
            // fullscreenDialog: true,
          ),
        );
      },
      child: Column(
        children: [
          Hero(
            tag: id,
            child: Container(
              width: 160,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    offset: const Offset(5, 5),
                    color: Colors.black.withOpacity(0.3),
                  ),
                ],
              ),
              child: Image.network(
                thumb,
                headers: const {
                  'Referer': 'https://comic.naver.com',
                },
              ),
            ),
          ),

          // Text(webtoon.thumb),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF555555),
              fontSize: 18,
              fontWeight: FontWeight.w200,
            ),
          ),
          // Text(webtoon.id),
        ],
      ),
    );
  }
}
