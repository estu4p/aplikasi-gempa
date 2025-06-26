import 'package:flutter/material.dart';
import 'package:gempa/components/arrow_button.dart';
import 'package:gempa/models/data.dart';
import 'package:gempa/pages/detail_page.dart';

class DefinisiGempa extends StatelessWidget {
  final Data data;
  const DefinisiGempa({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 18.0, 10.0),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              // 'assets/images/asdasdas.jpeg',
              data.image,
              width: double.infinity,
              height: 180,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            height: 180,
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.fromLTRB(12.0, 0, 18.0, 18.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.black.withOpacity(0.15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    // 'Definisi Gempa Bumi',
                    data.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Colors.white,
                      height: 1.0,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(
                          data: data,
                        ),
                      ),
                    );
                  },
                  child: ArrowButton(
                    borderColor: Colors.blue.shade200,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
