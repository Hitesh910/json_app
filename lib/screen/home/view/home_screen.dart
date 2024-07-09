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
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<HomeProvider>().getJson();
  }

  @override
  Widget build(BuildContext context) {
    providerR = context.read<HomeProvider>();
    providerW = context.watch<HomeProvider>();
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: const Text("Json"),
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  showBottom();
                },
                child: Text("Json")),ElevatedButton(onPressed: () {
                  showBottom2();
                }, child: Text("Comment"))
          ],
        )
        // ListView.builder(
        //   itemCount: providerW!.postList.length,
        //   itemBuilder: (context, index) {
        //     return ListTile(
        //       subtitle: Text("HEooo"),
        //       title: Text("${providerR!.postList[index]['userId']}"),
        //     );
        //   },
        // ),
        );
  }

  void showBottom() {
    scaffoldKey.currentState!.showBottomSheet(
      (context) => BottomSheet(
        onClosing: () {},
        builder: (context) {
          return Container(
            alignment: Alignment.topCenter,
            child: ListView.builder(
              itemCount: providerW!.postList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      subtitle: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                                "User Id :- ${providerR!.postList[index]['userId']}"),
                            Text(
                              "body :- ${providerR!.postList[index]['body']}",
                              style: TextStyle(overflow: TextOverflow.ellipsis),
                            ),
                          ],
                        ),
                      ),
                      title: Column(
                        children: [
                          Text("Id :- ${providerR!.postList[index]['id']}"),
                          Text(
                              "title :- ${providerR!.postList[index]['title']}"),
                        ],
                      ),
                    ),
                    Divider(),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }

  void showBottom2(){
    scaffoldKey.currentState!.showBottomSheet((context) => BottomSheet(onClosing: () {

    }, builder: (context) {
      return Container(
        alignment: Alignment.topCenter,
        child: ListView.builder(
          itemCount: providerW!.commentList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  subtitle: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("postId :- ${providerR!.commentList[index]['postId']}"),
                        Text("name:- ${providerR!.commentList[index]['name']}",
                          style: TextStyle(overflow: TextOverflow.ellipsis),
                        ),
                      ],
                    ),
                  ),
                  title: Column(
                    children: [
                      Text("id :- ${providerR!.commentList[index]['id']}"),
                      Text("email :- ${providerR!.commentList[index]['email']}"),
                      Text("body :-${providerR!.commentList[index]['body']}")
                    ],
                  ),
                ),
                Divider(),
              ],
            );
          },
        ),
      );
    },),);
  }
}
