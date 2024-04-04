import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme Study',
      theme: ThemeData(
        useMaterial3: true,
        // Define the default brightness and colors
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          secondary: Colors.red,
          brightness: Brightness.dark,
        ),

        // Define the default `TextTheme`. Use
        // this to specify the default text
        // styling for headlines, titles, bodies
        // of text, and more.
        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: GoogleFonts.oswald(
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: GoogleFonts.merriweather(),
          displaySmall: GoogleFonts.pacifico(),
        ),
      ),
      home: Scaffold(
        // Setting a unique ThemeData instance
        floatingActionButton: Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.green,
            ),
          ),
          child: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 12,
          ),
          color: Theme.of(context).colorScheme.primary,
          // Applying a theme
          child: Column(
            children: [
              Text(
                'Text with a background color',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
              ),
              Theme(
                data: Theme.of(context).copyWith(
                  colorScheme: ColorScheme.fromSeed(
                    seedColor: Colors.green,
                  ),
                ),
                child: Container(
                  color: Theme.of(context)
                      .colorScheme
                      .copyWith(
                        secondary: Colors.blue,
                      )
                      .secondary,
                  child: const Text(
                    'Text with a parent extending theme test',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
