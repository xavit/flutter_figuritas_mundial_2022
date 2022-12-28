import 'package:flutter/material.dart';
import 'package:flutter_bcp/models/figurines_model.dart';
import 'package:flutter_bcp/providers/figurines_provider.dart';
import 'package:provider/provider.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  Figurines? data = Figurines();
  @override
  Widget build(BuildContext context) {
    final figurinesProvider = Provider.of<FigurinesProvider>(context);

    return FutureBuilder(
      future: figurinesProvider.getFigurines(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          data = snapshot.data;
          print("snapshot.data: ${data!.data!.countries.length}");
          // data = snapshot.data;
          // return Scaffold(
          //   appBar: AppBar(
          //     title: const Text('Home UI'),
          //   ),
          //   body: Center(
          //     child: Text(data.toString()),
          //   ),
          // );

          return Scaffold(
            appBar: AppBar(
              title: const Text('BCP Figurines'),
            ),
            body: Center(
                child:
                    Text("Lista de Paises: ${data!.data!.countries.length}")),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );

    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Home UI'),
    //   ),
    //   body: Center(
    //     child: Text(data.toString()),
    //   ),
    // );
  }
}
