import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'all_packages_response/packages_response.dart';


class DataCard extends StatelessWidget {
  final AllPackagesResponse data;
  const DataCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () => context.push("/"),
        leading: const CircleAvatar(
          child: Icon(PhosphorIcons.user),
        ),
        title: Text(data.nextUrl.toString()),
        subtitle: Text(data.packages?.first.name.toString() ?? ''),
      ),
    );
  }
}
