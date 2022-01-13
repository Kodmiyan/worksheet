import 'package:flutter/material.dart';
import 'package:tasarim/modelgrid1.dart';
import 'package:tasarim/modelgrid2.dart';
import 'package:tasarim/modelgrid3.dart';

Expanded govde = Expanded(
  flex: 3,
  child: Padding(
    padding: const EdgeInsets.all(25.0),
    child: Container(
      child: Column(
        children: [postTitle(), aciklama(), const ResimAlani(), tags()],
      ),
      decoration: tasarim(),
    ),
  ),
);

/* Expanded resimKismi() {
  return Expanded(
      flex: 4,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Hero(
                tag: 'modelgrid1',
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(this.context).push(MaterialPageRoute(
                      builder: (context) => const ModelGrid1(),
                    ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("Assets/modelgrid1.jpeg")),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("Assets/modelgrid2.jpeg")),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("Assets/modelgrid3.jpeg")),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      )); 
}*/

BoxDecoration tasarim() {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(25),
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: const Offset(0, 3),
      )
    ],
  );
}

Expanded tags() {
  return Expanded(
      flex: 1,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.red.shade300,
              ),
              child: const Text("  #Louis Vulton  "),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.red.shade300),
              child: const Text("  #Chloe  "),
            ),
          )
        ],
      ));
}

Expanded postTitle() {
  return Expanded(
      flex: 2,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
              child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                child: const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/model2.jpeg"),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Daisy",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "General",
                      )),
                  Text(
                    "54 min ago",
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                  )
                ],
              )
            ],
          )),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
          )
        ],
      ));
}

Expanded aciklama() {
  return const Expanded(
    flex: 2,
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        """
This officcal website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is recommended to friends.""",
        style: TextStyle(color: Colors.black54, fontFamily: "General"),
      ),
    ),
  );
}

class ResimAlani extends StatefulWidget {
  const ResimAlani({Key? key}) : super(key: key);

  @override
  _ResimAlaniState createState() => _ResimAlaniState();
}

class _ResimAlaniState extends State<ResimAlani> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 4,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(this.context).push(MaterialPageRoute(
                      builder: (context) => const ModelGrid1(),
                    ));
                  },
                  child: Hero(
                    tag: 'modelgrid1',
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("Assets/modelgrid1.jpeg")),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(this.context).push(
                              MaterialPageRoute(
                                builder: (context) => const ModelGrid2(),
                              ),
                            );
                          },
                          child: Hero(
                            tag: 'modelgrid2',
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage("Assets/modelgrid2.jpeg")),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ModelGrid3(),
                            ));
                          },
                          child: Hero(
                            tag: 'modelgrid3',
                            child: Container(
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage("Assets/modelgrid3.jpeg")),
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
