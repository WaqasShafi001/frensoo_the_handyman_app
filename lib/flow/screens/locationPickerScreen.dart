// ignore_for_file: file_names, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:frensoo_the_handyman_app/controllers/locationPickerController.dart';
import 'package:get/get.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationPickerScreen extends StatefulWidget {
  const LocationPickerScreen({Key? key}) : super(key: key);

  static final kInitialPosition = LatLng(-33.8567844, 151.213108);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<LocationPickerScreen> {
  // PickResult? selectedPlace;
  var locationPickerController = Get.put(LocationPickerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LayoutBuilder(
      builder: (context, constraints) => Container(
        height: constraints.maxHeight,
        width: constraints.maxWidth,
        child: Center(
          child: PlacePicker(
            apiKey: 'AIzaSyAbTaqS99X-gMbJNWDjDfn76P36Sy5YNe8',
            initialPosition: LocationPickerScreen.kInitialPosition,
            useCurrentLocation: true,
            searchingText: 'Search place here'.tr,
            onMapCreated: (GoogleMapController controller) {},
            selectInitialPosition: true, enableMapTypeButton: true,
            hidePlaceDetailsWhenDraggingPin: false,
            usePlaceDetailSearch: true,

            //usePlaceDetailSearch: true,
            onPlacePicked: (result) {
              locationPickerController.selectedPlace.value =
                  result.formattedAddress!;
              // print(
              //     '-=-==-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=--==-=-=--==-=--==--=-=-=-=-=-=-==-=--=${selectedPlace!.formattedAddress}');
              print(
                  '-=-==-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=--==-=-=--==-=--==--=-=-=-=-=-=-==-=--=${locationPickerController.selectedPlace.value}');

              Navigator.of(context).pop();
            },
            //forceSearchOnZoomChanged: true,
            //automaticallyImplyAppBarLeading: false,
            //autocompleteLanguage: "ko",
            //region: 'au',
            //selectInitialPosition: true,
            // selectedPlaceWidgetBuilder: (_, selectedPlace, state, isSearchBarFocused) {
            //   print("state: $state, isSearchBarFocused: $isSearchBarFocused");
            //   return isSearchBarFocused
            //       ? Container()
            //       : FloatingCard(
            //           bottomPosition: 0.0, // MediaQuery.of(context) will cause rebuild. See MediaQuery document for the information.
            //           leftPosition: 0.0,
            //           rightPosition: 0.0,
            //           width: 500,
            //           borderRadius: BorderRadius.circular(12.0),
            //           child: state == SearchingState.Searching
            //               ? Center(child: CircularProgressIndicator())
            //               : RaisedButton(
            //                   child: Text("Pick Here"),
            //                   onPressed: () {
            //                     // IMPORTANT: You MUST manage selectedPlace data yourself as using this build will not invoke onPlacePicker as
            //                     //            this will override default 'Select here' Button.
            //                     print("do something with [selectedPlace] data");
            //                     Navigator.of(context).pop();
            //                   },
            //                 ),
            //         );
            // },
            // pinBuilder: (context, state) {
            //   if (state == PinState.Idle) {
            //     return Icon(Icons.favorite_border);
            //   } else {
            //     return Icon(Icons.favorite);
            //   }
            // },
          ),
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: <Widget>[

          //     selectedPlace == null
          //         ? Container()
          //         : Text(selectedPlace!.formattedAddress ?? ""),
          //   ],
          // ),
        ),
      ),
    ));
  }
}
