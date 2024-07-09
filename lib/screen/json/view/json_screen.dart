import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../home/provider/home_provider.dart';

class JsonScreen extends StatefulWidget {
  const JsonScreen({super.key});

  @override
  State<JsonScreen> createState() => _JsonScreenState();
}

class _JsonScreenState extends State<JsonScreen> {
  HomeProvider? providerR;
  HomeProvider? providerW;
  @override
  Widget build(BuildContext context) {
    providerR = context.read<HomeProvider>();
    providerW = context.watch<HomeProvider>();
    return Scaffold(appBar: AppBar(title: Text("JsonData"),),
      body: ListView.builder(itemCount: providerW!.postList.length,
        itemBuilder: (context, index) {

      },),);
  }
}
