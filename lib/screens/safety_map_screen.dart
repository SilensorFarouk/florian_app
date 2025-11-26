import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:florian_app/models/safe_location.dart';
import 'package:florian_app/services/location_service.dart';

class SafetyMapScreen extends StatefulWidget {
  @override
  _SafetyMapScreenState createState() => _SafetyMapScreenState();
}

class _SafetyMapScreenState extends State<SafetyMapScreen> {
  GoogleMapController? _mapController;
  LatLng? _currentLocation;
  final Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
    _loadSafeLocations();
  }

  void _getCurrentLocation() async {
    try {
      final position = await LocationService.getCurrentLocation();
      setState(() {
        _currentLocation = LatLng(position.latitude, position.longitude);
      });
      _mapController?.animateCamera(
        CameraUpdate.newLatLngZoom(_currentLocation!, 15),
      );
    } catch (e) {
      print('Error getting location: $e');
    }
  }

  void _loadSafeLocations() {
    // Mock data - replace with actual API call
    List<SafeLocation> safeLocations = [
      SafeLocation(
        id: '1',
        name: 'Local Police Station',
        latitude: 28.6129,
        longitude: 77.2295,
        type: 'police',
        phoneNumber: '100',
      ),
      SafeLocation(
        id: '2',
        name: 'City Hospital',
        latitude: 28.6139,
        longitude: 77.2090,
        type: 'hospital',
        phoneNumber: '108',
      ),
    ];

    for (var location in safeLocations) {
      _markers.add(
        Marker(
          markerId: MarkerId(location.id),
          position: LatLng(location.latitude, location.longitude),
          infoWindow: InfoWindow(
            title: location.name,
            snippet: location.type,
          ),
          icon: location.type == 'police'
              ? BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue)
              : BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        ),
      );
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentLocation == null
          ? Center(child: CircularProgressIndicator())
          : GoogleMap(
              onMapCreated: (controller) => _mapController = controller,
              initialCameraPosition: CameraPosition(
                target: _currentLocation!,
                zoom: 15,
              ),
              markers: _markers,
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getCurrentLocation,
        child: Icon(Icons.my_location),
        backgroundColor: Colors.purple,
      ),
    );
  }
}
