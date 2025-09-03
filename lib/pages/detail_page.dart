import 'package:flutter/material.dart';
import 'package:gempa/components/back_button.dart';
import 'package:gempa/models/data.dart';

class DetailPage extends StatefulWidget {
  final Data data;
  const DetailPage({super.key, required this.data});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        fontSize: 16,
        height: 1.7,
        color: Colors.grey.shade700,
        decoration: TextDecoration.none,
        fontWeight: FontWeight.normal,
        fontFamily: 'Swiss721Light',
      ),
      child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.35,
                child: Stack(
                  children: [
                    Image.asset(
                      widget.data.image,
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.35,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: 60,
                      left: 20,
                      child: const ArrowBackButton(),
                    ),
                    Positioned(
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          width: double.infinity,
                          height: 80,
                          padding: const EdgeInsets.only(top: 40.0, left: 18.0),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                //Colors.grey.shade100
                                Colors.transparent,
                                Colors.white.withOpacity(0.3),
                                Colors.white.withOpacity(0.5),
                                Colors.white,
                              ],
                              stops: const [0.0, 0.3, 0.5, 1.0],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 45,
                      left: 18,
                      child: Image.asset(
                        widget.data.icon,
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Transform.translate(
                offset: const Offset(0, -30),
                child: Container(
                    padding: const EdgeInsets.only(
                      left: 18.0,
                      right: 18.0,
                      bottom: 20.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.data.title,
                          style: const TextStyle(
                            fontFamily: 'Swiss721Bold',
                            fontSize: 28,
                            height: 1.2,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            color: Colors.black87,
                          ),
                        ),
                        widget.data.content
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
