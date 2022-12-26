import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_learning/screens/API_integration/country.dart';

class CountryDetail extends StatelessWidget {
  final Country country;

  const CountryDetail({Key? key, required this.country}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Country Detail'),
      ),
      body: Center(
        heightFactor: 1.2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(),
            height: 300,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45, width: 2),
                  ),
                    child: Stack(
                      children: [
                        Text('\n\n\n   Flag is missing   ', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                        SvgPicture.network(
                          country.flag,
                          height: 200,
                        )
                      ],
                    )),
                SizedBox(
                  height: 30,
                ),
                Text(
                  country.name,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
