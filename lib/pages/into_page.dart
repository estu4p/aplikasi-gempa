import 'package:flutter/material.dart';
import 'package:gempa/components/button.dart';

class IntoPage extends StatelessWidget {
  const IntoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.65,
              child: Image.asset(
                'assets/images/gempa1.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 10, 24.0, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: const Text("Sikap & Pengetahuan",
                      style: TextStyle(
                        fontFamily: 'Swiss721Light',
                        fontSize: 36,
                        color: Color(0xFF042B59),
                        height: 1.0,
                      )),
                ),
                const SizedBox(height: 14.0),
                const Text(
                  "Bencana Alam Gempa Bumi.",
                  style: TextStyle(
                    fontSize: 46,
                    fontWeight: FontWeight.bold,
                    height: 1.0,
                    fontFamily: 'Swiss721Bold',
                  ),
                ),
                const SizedBox(height: 20),
                MyButton(
                  text: 'Mulai',
                  onPressed: () {
                    Navigator.pushNamed(context, '/menupage');
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
