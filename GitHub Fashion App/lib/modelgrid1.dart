import 'package:flutter/material.dart';

class ModelGrid1 extends StatelessWidget {
  const ModelGrid1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[_arkaPlanResim(), _onPlanKutu(), _ucanKutu()],
      ),
    );
  }

  Align _ucanKutu() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.black87),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  "LAMİNATED",
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  Icons.chevron_right_sharp,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Positioned _onPlanKutu() {
    return Positioned(
      top: 375,
      bottom: 48.0,
      left: 10.0,
      right: 10.0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black54),
                              image: const DecorationImage(
                                  image: AssetImage('assets/dress.jpg'))),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Text(
                              "LAMİNATED",
                              style: TextStyle(
                                fontFamily: 'general',
                                fontSize: 24,
                              ),
                            ),
                            Text(
                              "Louis vuiltton",
                              style: TextStyle(
                                  color: Colors.black54, fontFamily: 'general'),
                            ),
                            Text(
                              "One Button V neck sling long slooved waist female stitching dress.",
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'general',
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Divider(),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Text("6500 TL"),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.brown.shade600,
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.chevron_right_rounded,
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Hero _arkaPlanResim() {
    return Hero(
      tag: 'modelgrid1',
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/modelgrid1.jpeg'), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
