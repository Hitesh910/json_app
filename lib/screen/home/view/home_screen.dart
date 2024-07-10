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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    showBottom();
                  },
                  child: const Text("Json")),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    showBottom3();
                  },
                  child: const Text("Comment")),
              ElevatedButton(
                  onPressed: () {
                    showBottom2();
                  },
                  child: Text("Album")),
              ElevatedButton(
                  onPressed: () {
                    showBottom4();
                  },
                  child: Text("photos")),
              ElevatedButton(
                  onPressed: () {
                    showBottom4();
                  },
                  child: Text("todos")),
              ElevatedButton(
                  onPressed: () {
                    // showBottom6();
                  },
                  child: Text("Users"))
            ],
          ),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Column(
                        children: [
                          Text("id :- ${providerR!.postList[index].id}"),
                          Text(
                              "user Id :- ${providerR!.postList[index].userId}")
                        ],
                      ),
                      subtitle: Column(
                        children: [
                          Text("title :- ${providerR!.postList[index].title}"),
                          Text("body :- ${providerR!.postList[index].body}"),
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

  void showBottom2() {
    scaffoldKey.currentState!.showBottomSheet(
      (context) => BottomSheet(
        onClosing: () {},
        builder: (context) {
          return Container(
            alignment: Alignment.topCenter,
            child: ListView.builder(
              itemCount: providerW!.usersList.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Column(
                        children: [
                          Text("id :- ${providerR!.usersList[index].id}"),
                          Text("name :- ${providerR!.usersList[index].name}"),
                          Text(
                              ("username :- ${providerR!.usersList[index].username}")),
                          Text("email :- ${providerR!.usersList[index].email}"),
                          Text(
                              "street :- ${providerR!.usersList[index].address!.street}"),
                          Text(
                              "suite :- ${providerR!.usersList[index].address!.suite}"),
                          Text(
                              "city :- ${providerR!.usersList[index].address!.city}"),
                          Text(
                              "zipcode :- ${providerR!.usersList[index].address!.zipcode}"),
                          Text(
                              "zipcode :- ${providerR!.usersList[index].phone}"),
                          Text(
                              "zipcode :- ${providerR!.usersList[index].website}"),
                          Text(
                              "zipcode :- ${providerR!.usersList[index].company!.name}"),
                          Text(
                              "zipcode :- ${providerR!.usersList[index].company!.catchPhrase}"),
                          Text(
                              "zipcode :- ${providerR!.usersList[index].company!.bs}"),
                        ],
                      ),
                      subtitle: Column(
                        children: [
                          Text(
                              "lat :- ${providerR!.usersList[index].address!.geo!.lat}"),
                          Text(
                              "lng :- ${providerR!.usersList[index].address!.geo!.lng}"),
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

  void showBottom3() {
    scaffoldKey.currentState!.showBottomSheet(
      (context) => BottomSheet(
        onClosing: () {},
        builder: (context) {
          return Container(
            alignment: Alignment.topCenter,
            child: ListView.builder(
              itemCount: providerW!.commentsList.length,
              itemBuilder: (context, index) {
              return  ListTile(
                    title: Column(
                      children: [
                        Text(
                            "postId :- ${providerR!.commentsList[index].postId}"),
                        Text("name :- ${providerR!.commentsList[index].name}"),
                      ],
                    ),
                    subtitle: Column(
                      children: [
                        Text("id :- ${providerR!.commentsList[index].id}"),
                        Text(
                            "email :- ${providerR!.commentsList[index].email}"),
                        Text("body :- ${providerR!.commentsList[index].body}")
                      ],
                    ));
              },
            ),
          );
        },
      ),
    );
  }

  // void showBottom() {
  //   scaffoldKey.currentState!.showBottomSheet(
  //     (context) => BottomSheet(
  //       onClosing: () {},
  //       builder: (context) {
  //         return Container(
  //           alignment: Alignment.topCenter,
  //           child: ListView.builder(
  //             itemCount: providerW!.postList.length,
  //             itemBuilder: (context, index) {
  //               return Column(
  //                 children: [
  //                   ListTile(
  //                     subtitle: SingleChildScrollView(
  //                       child: Column(
  //                         mainAxisAlignment: MainAxisAlignment.start,
  //                         children: [
  //                           Text(
  //                               "User Id :- ${providerR!.postList[index].userId}"),
  //                           Text(
  //                             "body :- ${providerR!.postList[index].body}",
  //                             style: const TextStyle(
  //                                 overflow: TextOverflow.ellipsis),
  //                           ),
  //                         ],
  //                       ),
  //                     ),
  //                     title: Column(
  //                       children: [
  //                         Text("Id :- ${providerR!.postList[index].id}"),
  //                         Text(
  //                             "title :- ${providerR!.postList[index].title}"),
  //                       ],
  //                     ),
  //                   ),
  //                   const Divider(),
  //                 ],
  //               );
  //             },
  //           ),
  //         );
  //       },
  //     ),
  //   );
  // }

  // void showBottom2() {
  //   scaffoldKey.currentState!.showBottomSheet(
  //     (context) => BottomSheet(
  //       onClosing: () {},
  //       builder: (context) {
  //         return Container(
  //           alignment: Alignment.topCenter,
  //           child: ListView.builder(
  //             itemCount: providerW!.commentList.length,
  //             itemBuilder: (context, index) {
  //               return Column(
  //                 children: [
  //                   ListTile(
  //                     subtitle: SingleChildScrollView(
  //                       child: Column(
  //                         mainAxisAlignment: MainAxisAlignment.start,
  //                         children: [
  //                           Text(
  //                               "postId :- ${providerR!.commentList[index]['postId']}"),
  //                           Text(
  //                             "name:- ${providerR!.commentList[index]['name']}",
  //                             style: const TextStyle(
  //                                 overflow: TextOverflow.ellipsis),
  //                           ),
  //                         ],
  //                       ),
  //                     ),
  //                     title: Column(
  //                       children: [
  //                         Text("id :- ${providerR!.commentList[index]['id']}"),
  //                         Text(
  //                             "email :- ${providerR!.commentList[index]['email']}"),
  //                         Text(
  //                             "body :-${providerR!.commentList[index]['body']}")
  //                       ],
  //                     ),
  //                   ),
  //                   const Divider(),
  //                 ],
  //               );
  //             },
  //           ),
  //         );
  //       },
  //     ),
  //   );
  // }

  // void showBottom3() {
  //   scaffoldKey.currentState!.showBottomSheet(
  //         (context) =>
  //         BottomSheet(
  //           onClosing: () {},
  //           builder: (context) {
  //             return Container(
  //               alignment: Alignment.topCenter,
  //               child: ListView.builder(
  //                 itemCount: providerW!.albumList.length,
  //                 itemBuilder: (context, index) {
  //                   return Column(
  //                     children: [
  //                       ListTile(
  //                         subtitle: SingleChildScrollView(
  //                           child: Column(
  //                             mainAxisAlignment: MainAxisAlignment.start,
  //                             children: [
  //                               Text(
  //                                   "userId :- ${providerR!
  //                                       .albumList[index]['userId']}"),
  //                               Text(
  //                                 "title :- ${providerR!
  //                                     .albumList[index]['title']}",
  //                                 style: const TextStyle(
  //                                     overflow: TextOverflow.ellipsis),
  //                               ),
  //                             ],
  //                           ),
  //                         ),
  //                         title: Column(
  //                           children: [
  //                             Text(
  //                                 "id :- ${providerR!.albumList[index]['id']}"),
  //                             // Text(
  //                             //     "email :- ${providerR!.commentList[index]['email']}"),
  //                             // Text(
  //                             //     "body :-${providerR!.commentList[index]['body']}")
  //                           ],
  //                         ),
  //                       ),
  //                       const Divider(),
  //                     ],
  //                   );
  //                 },
  //               ),
  //             );
  //           },
  //         ),
  //   );
  // }

  // void showBottom4() {
  //   scaffoldKey.currentState!.showBottomSheet(
  //     (context) => BottomSheet(
  //       onClosing: () {},
  //       builder: (context) {
  //         return Container(
  //           alignment: Alignment.topCenter,
  //           child: ListView.builder(
  //             itemCount: providerW!.photosList.length,
  //             itemBuilder: (context, index) {
  //               return Column(
  //                 children: [
  //                   ListTile(
  //                     subtitle: SingleChildScrollView(
  //                       child: Column(
  //                         mainAxisAlignment: MainAxisAlignment.start,
  //                         children: [
  //                           Text(
  //                               "albumId :- ${providerR!.photosList[index]['albumId']}"),
  //                           Text(
  //                             "title :- ${providerR!.photosList[index]['title']}",
  //                             style: const TextStyle(
  //                                 overflow: TextOverflow.ellipsis),
  //                           ),
  //                         ],
  //                       ),
  //                     ),
  //                     title: Column(
  //                       children: [
  //                         Text("id :- ${providerR!.photosList[index]['id']}"),
  //                         Text("url :- ${providerR!.photosList[index]['url']}"),
  //                         Text(
  //                             "thumbnaiUrl :- ${providerR!.photosList[index]['thumbnailUrl']}")
  //                       ],
  //                     ),
  //                   ),
  //                   const Divider(),
  //                 ],
  //               );
  //             },
  //           ),
  //         );
  //       },
  //     ),
  //   );
  // }

  void showBottom4() {
    scaffoldKey.currentState!.showBottomSheet((context) => BottomSheet(onClosing: () {

    }, builder: (context) {
    return  Container(alignment: Alignment.topCenter,
    child: ListView.builder(
      itemCount: providerW!.photosList.length,
      itemBuilder: (context, index) {
        return  Column(
          children: [
            ListTile(
                title: Column(
                  children: [
                    Text("albumId :- ${providerW!.photosList[index].albumId}"),
                    Text("title :- ${providerR!.photosList[index].title}")

                    ,
                  ],
                ),
                subtitle: Column(
                  children: [
                    Text("id :- ${providerR!.photosList[index].id}"),
                    Text("url :- ${providerR!.photosList[index].url}"),
                    Text("thumbnaiUrl :- ${providerR!.photosList[index].thumbnaiUrl}")
                  ],
                )),
            Divider(),
          ],
        );
      },
    ),);
    },),);
  }

  void showBottom5() {
    scaffoldKey.currentState!.showBottomSheet(
      (context) => BottomSheet(
        onClosing: () {},
        builder: (context) {
          return Container(
            alignment: Alignment.topCenter,
            child: ListView.builder(
              itemCount: providerW!.todosList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      subtitle: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                                "userId :- ${providerR!.todosList[index]['userId']}"),
                            Text(
                              "title :- ${providerR!.todosList[index]['title']}",
                              style: const TextStyle(
                                  overflow: TextOverflow.ellipsis),
                            ),
                          ],
                        ),
                      ),
                      title: Column(
                        children: [
                          Text("id :- ${providerR!.todosList[index]['id']}"),
                          Text(
                              "completed :- ${providerR!.todosList[index]['completed']}"),
                          // Text(
                          //     "thumbnaiUrl :- ${providerR!.photosList[index]['thumbnailUrl']}")
                        ],
                      ),
                    ),
                    const Divider(),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }

// void showBottom6() {
//   scaffoldKey.currentState!.showBottomSheet(
//     (context) => BottomSheet(
//       onClosing: () {},
//       builder: (context) {
//         return Container(
//           alignment: Alignment.topCenter,
//           child: ListView.builder(
//             itemCount: providerW!.usersList.length,
//             itemBuilder: (context, index) {
//               return Column(
//                 children: [
//                   ListTile(
//                     subtitle: SingleChildScrollView(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Text(
//                               "lat :- ${providerR!.usersList[index]['address']['geo']['lat']}"),
//                           Text(
//                               "lng :- ${providerR!.usersList[index]['address']['geo']['lng']}"),
//                           // Text(
//                           //     "completed :- ${providerR!.todosList[index]['completed']}"),
//                         ],
//                       ),
//                     ),
//                     title: Column(
//                       children: [
//                         Text("id :- ${providerR!.usersList[index]['id']}"),
//                         Text(
//                           "name :- ${providerR!.usersList[index]['name']}",
//                           style: const TextStyle(
//                               overflow: TextOverflow.ellipsis),
//                         ),
//                         Text(
//                             "userNamae :- ${providerR!.usersList[index]['username']}"),
//                         Text(
//                             "email :- ${providerR!.usersList[index]['email']}"),
//                         Text(
//                             "street :- ${providerR!.usersList[index]['address']['street']}"),
//                         Text(
//                             "suite :- ${providerR!.usersList[index]['address']['suite']}"),
//                         Text(
//                             "city :- ${providerR!.usersList[index]['address']['city']}"),
//                         Text(
//                             "zipcode :- ${providerR!.usersList[index]['address']['zipcode']}"),
//                         Text(
//                             "phone :- ${providerR!.usersList[index]['phone']}"),
//                         Text(
//                             "website :- ${providerR!.usersList[index]['website']}"),
//                         Text(
//                             "company name :- ${providerR!.usersList[index]['company']['name']}"),
//                         Text(
//                             "company catchPhrase :- ${providerR!.usersList[index]['company']['catchPhrase']}"),
//                         Text(
//                             "company bs :- ${providerR!.usersList[index]['company']['bs']}"),
//                         // Text(
//                         //     "thumbnaiUrl :- ${providerR!.photosList[index]['thumbnailUrl']}")
//                       ],
//                     ),
//                   ),
//                   const Divider(),
//                 ],
//               );
//             },
//           ),
//         );
//       },
//     ),
//   );
// }
}
