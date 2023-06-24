import 'package:flutter/material.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  final TextEditingController _textEditingController = TextEditingController();

  void navigateToImagePage(String text) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ImagePage(text: text)),
    );
  }

  // ignore: non_constant_identifier_names
  Widget DetailView(String text, double width, double height) {
    return InkWell(
      onTap: () => navigateToImagePage(text),
      child: Container(
        margin: const EdgeInsets.all(8),
        width: width,
        height: height,
        padding: const EdgeInsets.all(70),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Image.asset(
                "images/6.png",
                width: 130,
              ),
            ),
            const SizedBox(width: 8),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 30),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  DetailView('main', 500, 500),
                  Row(
                    children: [
                      DetailView('news1', 190, 200),
                      DetailView('news2', 190, 200),
                    ],
                  ),
                  Row(
                    children: [
                      DetailView('news3', 190, 200),
                      DetailView('news4', 190, 200),
                    ],
                  ),
                ],
              ),
            ),
            const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text('Mine Picks',
                    style: TextStyle(color: Colors.black, fontSize: 15)),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < 6; i++)
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 120,
                      height: 220,
                      padding: const EdgeInsets.all(70),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(75)),
                      child: const Center(
                        child: Text('look1'),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}

class ImagePage extends StatelessWidget {
  final String text;

  const ImagePage({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'MINE MAGAZINE',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Center(
        child: Text(text),
      ),
    );
  }
}
