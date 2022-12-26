import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_learning/screens/API_integration/country.dart';
import 'package:http/http.dart' as http;
import 'package:my_learning/screens/API_integration/country_Detail.dart';

class FlagsAPI extends StatefulWidget {
  const FlagsAPI({Key? key}) : super(key: key);

  @override
  State<FlagsAPI> createState() => _FlagsAPIState();
}

class _FlagsAPIState extends State<FlagsAPI> {
  Future<List<Country>> gitAllCountries() async {
    const url = 'https://countriesnow.space/api/v0.1/countries/flag/images';
    var responce = await http.get(Uri.parse(url));
    var jsonData = json.decode(responce.body);
    var jsonArray = jsonData['data'];
    List<Country> countries = [];

    for (var jsonCountry in jsonArray) {
      Country country =
          Country(name: jsonCountry['name'], flag: jsonCountry['flag']);
      countries.add(country);
    }
    return countries;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Country Flags'),
      ),
      body: FutureBuilder<List<Country>>(
          future: gitAllCountries(),
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              List<Country> countries = snapshot.data!;

              return Scrollbar(
                thickness: 4,
                radius: const Radius.circular(22),
                child: ListView.builder(
                    itemCount: countries.length,
                    itemBuilder: (context, index) {
                      Country country = countries[index];

                      Widget GitFlag(){
                        // var a = country;
                        if (country.flag == null) {
                          return Placeholder();
                        }
                        else{
                          return SvgPicture.network(
                            country.flag,
                            width: 100,
                          );
                        }
                      }

                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CountryDetail(country: country)),
                            );
                          },
                          child: Container(
                            height: 100,
                            padding: const EdgeInsets.all(8.0),
                            margin: EdgeInsets.only(bottom: 2),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [

                                Stack(
                                  children: [
                                    Text('Flag is missing'),
                                    GitFlag(),
                                  ],
                                ),
                                // SvgPicture.network(
                                //   country.flag,
                                //   width: 100,
                                // ),
                                SizedBox(
                                  width: 15,
                                ),
                                // Text(country.flag.runtimeType.toString()),
                                // Expanded(child: Text(country.flag.toString())),
                                Expanded(
                                    child: Text(
                                  country.name,
                                  style: const TextStyle(
                                      fontSize: 22, fontWeight: FontWeight.bold),
                                )),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              );
            }
          }),
    );
  }
}
