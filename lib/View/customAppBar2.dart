import 'package:flutter/material.dart';

void main() => runApp(customAppBar2());

class customAppBar2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: PreferredSize(
            child: AppBar(
              title: SizedBox(
                height: 0.5,
                child: Text('News Headlines'),
              ),
              leading: IconButton(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {}),
            ),
            preferredSize: Size.fromHeight(80.0)),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Card(
              elevation: 10.0,
              child: Column(
                children: <Widget>[
                  //FOR THE IMAGE
                  Image.asset("images/trump.jpg"),
                  SizedBox(
                    height: 10.0,
                  ),
                  //FOR THE HEADING
                  Text(
                    "America pays for the wall: thieves mock Trump by stealing border razor wire",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  //FOR THE BODY
                  Expanded(
                    child: SingleChildScrollView(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                        child: Text(
                            "Mexicans are building fences, and America has already paid for them. In recent months, US authorities have unrolled miles of razor wire along the border with Mexico as part of efforts to “harden” the frontier and deter migrants from entering America illegally. But thieves in the city of Tijuana have made a mockery of Donald Trump’s attempts at beefing up border security by stealing the razor wire and reselling it to local residents in Mexico. Residents of barrios abutting the border told XETW 12 television in Tijuana that entrepreneurial individuals have offered to sell them the stolen concertina wire and install it for just 40 pesos per home – barely 2. Fifteen people have been arrested for stealing concertina wire, according to XETW 12, but none were held for long. The wire they offered to locals matches what was installed on the border and is not sold in Mexican hardware stores, according to local media. One resident, identified as Verónica, told El Sol de Tijuana newspaper that the man selling the wire was clearly not from Mexico. “It was an American punk: blue eyes, blond hair. He didn’t speak Spanish very well,” she said. She said the man had pushed a shopping cart full of concertina wire through the streets of her neighbourhood, offering it to local homeowners. “If we’d known it was from the wall, one wouldn’t have bought anything,” she said. Miles of concertina wire were installed along the border as caravans of Central American migrants began arriving in Mexican border cities, and Trump started describing the situation as a national emergency. The US president is still struggling to secure funding to build a border wall. But the wire is proving attractive for residents of Tijuana, where the homicide rate reached 138 per 100,000 residents – making it the most murderous city in the world, according to the Mexican thinktank the Citizens’ Council for Public Security and Criminal Justice. Local security officials blame the recent rise in violence in Tijuana on drug dealing disputes, especially the market for methamphetamines. Into the violence in Tijuana, the US government has started returning asylum seekers – with claims in US courts – to the city under an initiative known as “Remain in Mexico”. The asylum seekers are required to stay in Mexico until their cases are decided.")),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
