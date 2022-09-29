import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'response/package_response/package.dart';

class DataCard extends StatelessWidget {
  final Package data;
  const DataCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        context.push('/packageView?packageName=${data.name}');
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(data.name.toString(),
                  style: const TextStyle(color: Colors.blue),
                  textAlign: TextAlign.start),
              SizedBox(
                height: height * 0.01,
              ),
              Text(data.latest?.pubspec?.description ?? ''),
              SizedBox(
                height: height * 0.01,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
