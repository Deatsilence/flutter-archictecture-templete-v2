// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

class ProjectNetworkImage extends StatelessWidget {
  const ProjectNetworkImage({
    required this.url,
    super.key,
  });

  final String? url;

  @override
  Widget build(BuildContext context) {
    return CustomNetworkImage(
      imageUrl: url,
      loadingWidget: Assets.lottie.animLoading.lottie(),
    );
  }
}
