
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tuko/theme/porvider.dart';
import 'package:tuko/theme/theme.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});
  // Color? color = Colors.blue;
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  late Mode providerMode; //Provider
  String name = 'Theme Colors';

  @override
  Widget build(BuildContext context) {
    providerMode = Provider.of(context); //Provider
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Spacer(),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(bottom: 10),
            child: DropdownMenu(
                label: Text(name),
                enableSearch: true,
                onSelected: (value) {
                  if (value != null) providerMode.setmode(value); //Provider
                },
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                width: 300,
                // hintText: "S",
                dropdownMenuEntries: <DropdownMenuEntry<ThemeData>>[
                  DropdownMenuEntry(value: ThemeApp.boyTheme, label: "Blue"),
                  DropdownMenuEntry(value: ThemeApp.girlTheme, label: "Pink"),
                ]),
          ),
        ],
      ),
    );
  }
}
