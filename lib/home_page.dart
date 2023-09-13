import 'package:flutter/material.dart';
import 'MyDdrawer.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Country> countries = [
    Country(
      name: 'Tunisie',
      capital: 'Tunis',
      population: '12 Million',
      language: 'Arabe',
      flagImage: 'assets/images/tn.png',
    ),
    Country(
      name: 'Maroc',
      capital: 'Rabat',
      population: '38 Million',
      language: 'Arabe',
      flagImage: 'assets/images/ma.png',
    ),
   Country(
      name: 'USA',
      capital: 'washington',
      population: '332 Million',
      language: 'Anglais',
      flagImage: 'assets/images/us.png',
    ),
     Country(
      name: 'France',
      capital: 'Paris',
      population: '68 Million',
      language: 'Francais',
      flagImage: 'assets/images/fr.png',
    ),
       Country(
      name: 'Brasil',
      capital: 'Brasilia',
      population: '214 Million',
      language: 'portuguese',
      flagImage: 'assets/images/br.png',
    ),
  ];

  int countryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Atlas Monde'),
          actions: [
         IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            },
            icon: Icon(Icons.arrow_back),
          ),
        ],
      ),
      drawer: MyDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        
        children: [
          
          SizedBox(height: 15),
          Text(
            'Cliquez sur un pays',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 30),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              
              for (int index = 0; index < countries.length; index++)
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      countryIndex = index;
                    });
                  },
                  child: Text(countries[index].name),
                  style: ElevatedButton.styleFrom(
                    primary:  Colors.blue,
                  ),
                ),
                SizedBox(width: 10,),
            ],
          ),
          SizedBox(height:30),
          if (countries.isNotEmpty)
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Capitale: ${countries[countryIndex].capital}',
                  style: TextStyle(fontSize: 20,color: Colors.green),
                ),
                SizedBox(height: 30),
                Text(
                  'Population: ${countries[countryIndex].population}',
                  style: TextStyle(fontSize: 20,color: Colors.red),
                ),
                SizedBox(height: 30),
                Text(
                  'Langue: ${countries[countryIndex].language}',
                  style: TextStyle(fontSize: 20,color: Colors.yellow),
                ),
                SizedBox(height: 30),
                Image.asset(
                  countries[countryIndex].flagImage,
                  width: 300,
                  height: 200,
                  
                ),
              ],
            ),
        ],
      ),
        floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.cloud),
      ),
    );
  }
}
class Country {
  final String name;
  final String capital;
  final String population;
  final String language;
  final String flagImage;

  Country({
    required this.name,
    required this.capital,
    required this.population,
    required this.language,
    required this.flagImage,
  });
}
