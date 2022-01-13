import 'package:flutter/material.dart';

AppBar baslik = AppBar(
  backgroundColor: Colors.transparent,
  shadowColor: Colors.transparent,
  foregroundColor: Colors.transparent,
  title: const Text(
    "Moda uygulaması",
    style: TextStyle(
        color: Colors.black,
        fontFamily: "General",
        fontSize: 24,
        fontWeight: FontWeight.w900),
  ),
  actions: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.camera_alt,
            color: Colors.black54,
          )),
    )
  ],
);
