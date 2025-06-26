import 'package:flutter/material.dart';
import 'package:gempa/components/arrow_button.dart';
import 'package:gempa/models/data.dart';

class DataList extends StatelessWidget {
  final Data data;
  final VoidCallback? onTap;
  const DataList({super.key, required this.data, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 18.0, 10.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(12.0),
          width: double.infinity,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: Colors.grey.shade300,
              width: 1.0,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 4.0,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Center(
                    child: Image.asset(
                      data.icon,
                      width: 40,
                      height: 40,
                    ),
                  ),
                  const SizedBox(width: 20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.57,
                    child: Text(
                      data.title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        height: 1.1,
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: ArrowButton(
                  bgColor: Colors.blue,
                  borderColor: Colors.blue.shade200,
                  iconColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
