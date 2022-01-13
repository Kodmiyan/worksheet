import 'package:flutter/material.dart';
import 'package:tasarim/govde.dart';

Column stories = Column(
  mainAxisSize: MainAxisSize.max,
  children: [listViewBuilder(), govde],
);

Expanded listViewBuilder() {
  return Expanded(
    child: ListView.builder(
      itemCount: 15,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundImage:
                    AssetImage("assets/model${(index % 3) + 1}.jpeg"),
                radius: 40,
              ),
              Container(
                width: 80,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.brown.shade500),
                child: const Center(
                  child: Text(
                    "Follow",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        );
      },
    ),
  );
}
