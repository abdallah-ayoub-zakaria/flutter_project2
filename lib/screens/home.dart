import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List food = [
    'good',
    'food',
    'ved',
  ];
  List foodmenu = [
    {
      'image': AssetImage('assets/design_course/interFace1.png'),
      'name': 'Design',
      'info': '24 lesson',
      'star': Icon(Icons.star),
      'price': '\$25',
      'add': Icon(Icons.add)
    },
    {
      'image': AssetImage('assets/design_course/interFace1.png'),
      'name': 'Design',
      'info': '24 lesson',
      'star': Icon(Icons.star),
      'price': '\$25',
      'add': Icon(Icons.add)
    }
  ];
  List Designmenu = [
    {
      'image': AssetImage('assets/design_course/interFace3.png'),
      'name': 'Design',
      'info': '24 lesson',
      'star': Icon(Icons.star),
      'price': '\$25',
      'add': Icon(Icons.add)
    },
    {
      'image': AssetImage('assets/design_course/interFace4.png'),
      'name': 'Design',
      'info': '24 lesson',
      'star': Icon(Icons.star),
      'price': '\$25',
      'add': Icon(Icons.add)
    },
    {
      'image': AssetImage('assets/design_course/interFace3.png'),
      'name': 'Design',
      'info': '24 lesson',
      'star': Icon(Icons.star),
      'price': '\$25',
      'add': Icon(Icons.add)
    },
    {
      'image': AssetImage('assets/design_course/interFace4.png'),
      'name': 'Design',
      'info': '24 lesson',
      'star': Icon(Icons.star),
      'price': '\$25',
      'add': Icon(Icons.add)
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        child: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Choose your ',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Takalil Design',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    image: DecorationImage(
                        image:
                            AssetImage('assets/design_course/userImage.png'))),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            margin: EdgeInsets.only(right: 60),
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(offset: Offset(0, 3), blurRadius: 4)],
                color: Colors.white,
                borderRadius: BorderRadius.circular(13)),
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search for Design',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  suffixIcon: Icon(Icons.search)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Category',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            width: double.infinity,
            height: 50,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: food.length,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.circular(33)),
                        child: Text(
                          food[i],
                          style: TextStyle(color: Colors.blue, fontSize: 17),
                        )),
                  );
                }),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            height: 150,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: foodmenu.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13)),
                      width: 220,
                      height: 70,
                      child: Stack(
                        children: [
                          Positioned(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      image: DecorationImage(
                                          image: foodmenu[index]['image'])),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      '${foodmenu[index]['name']}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('${foodmenu[index]['info']}'),
                                        foodmenu[index]['star'],
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('${foodmenu[index]['price']}'),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius:
                                                  BorderRadius.circular(6)),
                                          child: foodmenu[index]['add'],
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Popular Design',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            height: 300,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 16),
                itemCount: Designmenu.length,
                itemBuilder: (context, indexs) {
                  return Container(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    color: Color.fromARGB(255, 244, 247, 252),
                    width: 100,
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${Designmenu[indexs]['name']}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('${Designmenu[indexs]['info']}'),
                            Designmenu[indexs]['star'],
                          ],
                        ),
                        Container(
                          width: 130,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Designmenu[indexs]['image'])),
                        ),
                      ],
                    ),
                  );
                }),
          )
        ]),
      ),
    );
  }
}
