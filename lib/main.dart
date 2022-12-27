import 'package:flutter/material.dart';
import 'package:flutter_bcp/providers/figurines_provider.dart';
import 'package:flutter_bcp/ui/home_ui.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FigurinesProvider()),
      ],
      child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (_) => const HomeUI(),
        },
      ),
    );
  }
}
