import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefDarkMode extends StatefulWidget {
  @override
  _SharedPrefDarkModeState createState() => _SharedPrefDarkModeState();
}

class _SharedPrefDarkModeState extends State<SharedPrefDarkMode> {
  ThemeMode _themeMode = ThemeMode.system;

  @override
  void initState() {
    super.initState();
    _loadThemePreference();
  }

  // Memuat preferensi tema dari SharedPreferences
  Future<void> _loadThemePreference() async {
    final prefs = await SharedPreferences.getInstance();
    final theme = prefs.getString('themeMode') ?? 'system';
    setState(() {
      _themeMode = _getThemeModeFromString(theme);
    });
  }

  // Menyimpan preferensi tema ke SharedPreferences
  Future<void> _saveThemePreference(ThemeMode themeMode) async {
    final prefs = await SharedPreferences.getInstance();
    final theme = _getStringFromThemeMode(themeMode);
    await prefs.setString('themeMode', theme);
  }

  // Mengubah preferensi tema
  void _updateThemeMode(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
    _saveThemePreference(themeMode);
  }

  // Helper untuk konversi ThemeMode ke String
  String _getStringFromThemeMode(ThemeMode themeMode) {
    switch (themeMode) {
      case ThemeMode.light:
        return 'light';
      case ThemeMode.dark:
        return 'dark';
      case ThemeMode.system:
      default:
        return 'system';
    }
  }

  // Helper untuk konversi String ke ThemeMode
  ThemeMode _getThemeModeFromString(String theme) {
    switch (theme) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      case 'system':
      default:
        return ThemeMode.system;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme Preference',
      themeMode: _themeMode,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: HomeScreen(
        themeMode: _themeMode,
        onThemeChanged: _updateThemeMode,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final ThemeMode themeMode;
  final Function(ThemeMode) onThemeChanged;

  const HomeScreen({
    required this.themeMode,
    required this.onThemeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Preference'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Select Theme Mode:',
            style: TextStyle(fontSize: 18),
          ),
          ListTile(
            title: Text('Light'),
            leading: Radio<ThemeMode>(
              value: ThemeMode.light,
              groupValue: themeMode,
              onChanged: (ThemeMode? value) {
                if (value != null) onThemeChanged(value);
              },
            ),
          ),
          ListTile(
            title: Text('Dark'),
            leading: Radio<ThemeMode>(
              value: ThemeMode.dark,
              groupValue: themeMode,
              onChanged: (ThemeMode? value) {
                if (value != null) onThemeChanged(value);
              },
            ),
          ),
          ListTile(
            title: Text('Use System Default'),
            leading: Radio<ThemeMode>(
              value: ThemeMode.system,
              groupValue: themeMode,
              onChanged: (ThemeMode? value) {
                if (value != null) onThemeChanged(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
