import 'package:flutter/material.dart';
import 'appbar.dart';
import 'mostwatched.dart';

class Categories extends StatefulWidget {
  Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final list = [
    "https://cdn.pixabay.com/photo/2014/11/13/06/10/boy-529065__340.jpg",
    "https://cdn.pixabay.com/photo/2017/08/22/11/55/linked-in-2668692__340.png",
    "https://cdn.pixabay.com/photo/2018/06/18/22/51/architecture-3483531__340.jpg",
    "https://cdn.pixabay.com/photo/2013/06/07/15/45/sky-122701__340.jpg",
    "https://cdn.pixabay.com/photo/2020/05/26/07/43/sea-5221913__340.jpg",
    "https://cdn.pixabay.com/photo/2017/04/15/12/08/chain-2232278__340.jpg",
    "https://cdn.pixabay.com/photo/2015/03/22/17/28/rings-684944__340.jpg",
    "https://cdn.pixabay.com/photo/2014/11/13/06/10/boy-529065__340.jpg",
    "https://cdn.pixabay.com/photo/2017/08/22/11/55/linked-in-2668692__340.png",
    "https://cdn.pixabay.com/photo/2018/06/18/22/51/architecture-3483531__340.jpg",
    "https://cdn.pixabay.com/photo/2013/06/07/15/45/sky-122701__340.jpg",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(85, 85, 85, 100),
      appBar: const PreferredSize(
          child: Appbar(), preferredSize: Size.fromHeight(60)),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Text(
              "CATEGORIES",
              style: TextStyle(color: Colors.amber),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [MostWatched()],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.black),
            child: GridView.count(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 15,
                  right: 15,
                ),
                crossAxisCount: 2,
                childAspectRatio: (1 / .65),
                crossAxisSpacing: 5,
                mainAxisSpacing: 10,
                children: List.generate(
                    list.length,
                    (index) => Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 1),
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(list[index]),
                                        fit: BoxFit.fill),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                            Positioned(
                                right: 2,
                                bottom: 2,
                                child: Container(
                                  alignment: Alignment.bottomRight,
                                  height: 18,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                     Text(
                                      'PDF',
                                      style: TextStyle(
                                        color: Colors.amber
                                      ),
                                     )
                                     
                                    ],
                                  ),
                                ))
                          ],
                        ))),
          )
        ],
      ),
    );
  }
}
