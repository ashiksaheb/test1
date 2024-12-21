import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/HomePage': (context) => const HomePage(),
        '/MyListView': (context) => const MyListView(),
        '/CustomButton': (context) => const CustomButton(),
        '/MyPageView': (context) => const MyPageView(),
        '/': (context) => ListDynamicData(),
      },
    );
  }
}

class ListDynamicData extends StatelessWidget {
  ListDynamicData({super.key});
  final List<Map<String, String>> users = [
    {'name': 'Ashik', 'age': '18'},
    {'name': 'Ajmery', 'age': '12'},
    {'name': 'Ariful', 'age': '14'},
    {'name': 'Mridhu', 'age': '20'},
    {'name': 'Maysha', 'age': '4'},
    {'name': 'Humaira', 'age': '1'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamically Data fetch using map() from List '),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: SizedBox(
        height: 120,
        child: ListView(
          children: [
            Image.asset('assets/images/1.jpg'),
          ],
        ),
      ),
    );
  }
}

class MyPageView extends StatelessWidget {
  const MyPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page View'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Scrollbar(
        thumbVisibility: true,
        thickness: 10.0,
        radius: const Radius.circular(10.0),
        child: ListView(
          children: List.generate(
            100,
            (index) => Text('Item number : ${index + 1}'),
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Widget'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      drawer: const Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.zero),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20.0),
            GestureDetector(
              onTap: () {
                debugPrint('This is a button');
              },
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Container(
                  width: 150,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(1.0, 1.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 75,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                          ),
                        ),
                        child: const Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 15),
                      const Text('Home'),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero),
              ),
              child: const Text('Elevated Button'),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
              child: const Text('Outline Button'),
            ),
            const SizedBox(height: 20.0),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
              ),
              child: const Text('Text Button'),
            ),
            const SizedBox(height: 20.0),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Widget'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      drawer: const Drawer(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(
              height: 200,
              child: RichText(
                text: const TextSpan(
                  text: 'Good Morning',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text:
                          '\n\nOn the Insert tab, the galleries include items that are designed to coordinate with the overall look of your document. You can use these galleries to insert tables, headers, footers, lists, cover pages, and other document building blocks. On the Insert tab, the galleries include items that are designed to coordinate with the overall look of your document. You can use these galleries to insert tables,',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 8.0, bottom: 8.0),
                    width: 150,
                    height: 150,
                    color: Colors.amber,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('Item ${index + 1}'),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 100,
              color: Colors.amber,
            ),
            const SizedBox(
              height: 8.0,
            ),
            Container(
              height: 100,
              color: Colors.blue,
            ),
            const SizedBox(
              height: 8.0,
            ),
            Container(
              height: 100,
              color: Colors.amber,
            ),
            const SizedBox(
              height: 8.0,
            ),
            Container(
              height: 100,
              color: Colors.green,
            ),
            const SizedBox(
              height: 8.0,
            ),
            Container(
              height: 100,
              color: Colors.yellow,
            ),
            const SizedBox(
              height: 8.0,
            ),
            Container(
              height: 100,
              color: Colors.green,
            ),
            const SizedBox(
              height: 8.0,
            ),
            Container(
              height: 100,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
                accountName: Text('MD Ashikur Rahman'),
                accountEmail: Text('ashik@gmail.com'))
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Welcome To Curry Cravings',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Image.asset('assets/images/1.png'),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Curry Cravings History',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Review',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '5796',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 18,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 18,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 18,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 18,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 18,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                  '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.  '''),
            ),
          ],
        ),
      ),
    );
  }
}
