import 'package:flutter/material.dart';
import 'package:movie/shared/buttons/button.dart';
import 'package:movie/shared/extensions/string_image_internet_tmdb.dart';

class IngressosButton implements Button {
  @override
  Widget build() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32,0,32,0),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            foregroundColor: Colors.amber[600],
            side: BorderSide(color: Colors.amber[600]!)),
        onPressed: () {
          'ingresso.com'.launchInBrowser();
        },
        child: const Text('Ingressos.com'),
      ),
    );
  }
}