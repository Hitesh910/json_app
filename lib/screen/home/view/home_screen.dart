import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/home_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? providerR;
  HomeProvider? providerW;

  @override
  Widget build(BuildContext context) {
    providerR = context.read<HomeProvider>();
    providerW = context.watch<HomeProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Json"),
      ),
      body: ListView.builder(
        itemCount: providerW!.postList.length,
        itemBuilder: (context, index) {
        return  ListTile(
            title: Text("${providerR!.postList[index]['userId']}"),
          );
        },
      ),
    );
  }
}
