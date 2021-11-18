import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Marker> allMarkers = [];

  @override
  void initState(){
    super.initState();
    allMarkers.add(Marker(
      markerId: const MarkerId('Santa Ana'),
      draggable: false,
      onTap: (){
        print('Marker Tapped');
      },
      position: const LatLng(13.9838741,-89.5978412),
      infoWindow: const InfoWindow(title: 'Sucursal Santa Ana', snippet: 'Bienvenido a la sucursal Santa Ana')
    ));

    allMarkers.add(Marker(
      markerId: const MarkerId('Chalchuapa'),
      draggable: false,
      onTap: (){
        print('Marker Tapped');
      },
      position: const LatLng(13.9866464,-89.6955159),
      infoWindow: const InfoWindow(title: 'Sucursal Chalchuapa', snippet: 'Bienvenido a la sucursal Chalchuapa')
    ));

    allMarkers.add(Marker(
      markerId: const MarkerId('El Congo'),
      draggable: false,
      onTap: (){
        print('Marker Tapped');
      },
      position: const LatLng(13.9038667,-89.507289),
      infoWindow: const InfoWindow(title: 'Sucursal El Congo', snippet: 'Bienvenido a la sucursal El Congo')
    ));

  }

  final _initialCameraPosition = const CameraPosition(
    target: LatLng(13.9838741,-89.5978412),
    zoom: 10,
    );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sucursales de Occidente - Domicilios SV'),
      ),
      body: GoogleMap(
        initialCameraPosition: _initialCameraPosition,
        markers: Set.from(allMarkers),
      ),
    );
  }
}



