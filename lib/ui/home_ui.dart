import 'package:flutter/material.dart';
import 'package:flutter_bcp/providers/figurines_provider.dart';
import 'package:provider/provider.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  @override
  Widget build(BuildContext context) {
    final figurinesProvider = Provider.of<FigurinesProvider>(context);

    final data = figurinesProvider.getFigurines();

    // print("data");
    print(data);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home UI'),
      ),
      body: Center(
        child: Text(data.toString()),
      ),
    );
  }
}
