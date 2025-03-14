import 'package:flutter/material.dart';
import 'package:hidaya/features/profile/presentation/views/profile.dart';

class SettingBody extends StatefulWidget {
  const SettingBody({super.key});

  @override
  State<SettingBody> createState() => _SettingBodyState();
}

class _SettingBodyState extends State<SettingBody> {
  String selectedLanguage = 'English'; // Default selected language
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon:
                    const Icon(Icons.notifications_active, color: Colors.black),
                onPressed: () {},
              ),
              const Text(
                "Setting",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              IconButton(
                icon: const Icon(Icons.menu, color: Colors.black),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              ListTile(
                leading: const Icon(Icons.person, color: Colors.red),
                title: const Text("Profile"),
                onTap: () {
                  // Action for Profile
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Profile()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.language, color: Colors.red),
                title: const Text("Language"),
                trailing: DropdownButton<String>(
                  value: selectedLanguage,
                  underline: Container(), // Removes underline
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedLanguage = newValue!;
                    });
                  },
                  items: <String>['English', 'Arabic']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.notifications, color: Colors.red),
                title: const Text("Notification"),
                onTap: () {
                  // Action for Notification
                },
              ),
              ListTile(
                leading: const Icon(Icons.contact_mail, color: Colors.red),
                title: const Text("Contact Us"),
                onTap: () {
                  // Action for Contact Us
                },
              ),
              ListTile(
                leading: const Icon(Icons.info, color: Colors.red),
                title: const Text("About Us"),
                onTap: () {
                  // Action for About Us
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
