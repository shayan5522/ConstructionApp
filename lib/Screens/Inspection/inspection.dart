import 'package:constructionapp/Components/buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'inspection_form.dart';

class InspectionScreen extends StatefulWidget {
  const InspectionScreen({super.key});

  @override
  State<InspectionScreen> createState() => _InspectionScreenState();
}

class _InspectionScreenState extends State<InspectionScreen> {
  final Map<String, bool> propertyTypes = {
    'Terraced': false,
    'End Terrace': false,
    'Free Hold': false,
    'Flat': false,
    'Maisonette': false,
    'Bungalow': false,
    'Other': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "What type of survey would you like to conduct?",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 15),

              Center(
                child: CustomButton(
                  text: "Occupied Property",
                  onPressed: () {
                    const Text('tyyab bi');
                  },
                ),
              ),
              const SizedBox(height: 15),
              Center(
                child: CustomButton(
                  solidColor: Colors.white,
                  text: "Void Property",
                  onPressed: () {
                    Get.to(() => const InspectionFormScreen());
                  },
                ),
              ),
              const SizedBox(height: 20),

              // Property Type Text
              Text(
                "Select Property Type",
                style: GoogleFonts.dmSans(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),

              Column(
                children: propertyTypes.keys.map((String key) {
                  return CheckboxListTile(
                    title: Text(key),
                    value: propertyTypes[key],
                    onChanged: (bool? value) {
                      setState(() {
                        propertyTypes[key] = value ?? false;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.teal,
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
