import 'package:flutter/material.dart';

class Province {
  final String name;
  final String imagePath;
  final String language; // Língua falada na província
  final double left; // Posição horizontal
  final double top; // Posição vertical

  Province({
    required this.name,
    required this.imagePath,
    required this.language,
    required this.left,
    required this.top,
  });
}

class MapContainer extends StatefulWidget {
  const MapContainer({Key? key}) : super(key: key);

  @override
  _MapContainerState createState() => _MapContainerState();
}

class _MapContainerState extends State<MapContainer> {
  List<Province> provinces = [
    Province(
        name: 'Cabo Delgado',
        imagePath: 'lib/images/cabodelgado.png',
        language: 'Makua',
        left: 220,
        top: 40),
    Province(
        name: 'Nampula',
        imagePath: 'lib/images/nampula.png',
        language: 'Lomwe',
        left: 210,
        top: 140),
    Province(
        name: 'Tete',
        imagePath: 'lib/images/tete.png',
        language: 'Nhúngue',
        left: 25,
        top: 170),
    Province(
        name: 'Niassa',
        imagePath: 'lib/images/niassa.png',
        language: 'Yao',
        left: 120,
        top: 90),
    Province(
        name: 'Zambezia',
        imagePath: 'lib/images/zambezia.png',
        language: 'Chuabo',
        left: 160,
        top: 190),
    Province(
        name: 'Sofala',
        imagePath: 'lib/images/sofala.png',
        language: 'Ndau',
        left: 100,
        top: 270),
    Province(
        name: 'Manica',
        imagePath: 'lib/images/manica.png',
        language: 'Sena',
        left: 45,
        top: 270),
    Province(
        name: 'Gaza',
        imagePath: 'lib/images/gaza.png',
        language: 'Changana',
        left: 25,
        top: 415),
    Province(
        name: 'Inhambane',
        imagePath: 'lib/images/inhambane.png',
        language: 'Chopi',
        left: 90,
        top: 410),
    Province(
        name: 'Maputo',
        imagePath: 'lib/images/maputo.png',
        language: 'Changana',
        left: 0,
        top: 520),
  ];

  void _onProvinceTap(Province province) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(province.name),
          content: Row(
            children: [
              Icon(Icons.info, color: Colors.blue), // Ícone informativo
              SizedBox(width: 8), // Espaço entre o ícone e o texto
              Text('Língua falada: ${province.language}'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 20),
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 108, 108, 108),
            borderRadius: BorderRadius.circular(5),
          ),
          height: 720,
          width: 500,
          child: Stack(
            children: provinces.map((province) {
              return _buildProvince(province);
            }).toList(),
          ),
        ),
      ),
    );
  }

  Widget _buildProvince(Province province) {
    return Positioned(
      left: province.left,
      top: province.top,
      child: GestureDetector(
        onTap: () => _onProvinceTap(province),
        child: Image.asset(
          province.imagePath,
          width: 100,
          height: 150,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
