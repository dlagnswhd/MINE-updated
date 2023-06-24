import 'package:flutter/material.dart';

class LooksPage extends StatefulWidget {
  const LooksPage({Key? key}) : super(key: key);

  @override
  State<LooksPage> createState() => _LooksPageState();
}

class _LooksPageState extends State<LooksPage> {
  final TextEditingController _textEditingController = TextEditingController();

  final List<String> looks = ['look1', 'look2', 'look3', 'look4'];

  void looksDetail(String text) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ImagePage(text: text)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextField(
              controller: _textEditingController,
              decoration: const InputDecoration(
                hintText: 'Search',
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(15),
              ),
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Row(
              children: [
                const SizedBox(width: 30),
                for (final look in looks.take(2))
                  InkWell(
                    onTap: () => looksDetail(look),
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      width: 160,
                      height: 340,
                      padding: const EdgeInsets.all(70),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(110),
                      ),
                      child: Center(
                        child: Text(look), // Display the respective look text
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                const SizedBox(width: 30),
                for (final look in looks.skip(2))
                  InkWell(
                    onTap: () => looksDetail(look),
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      width: 160,
                      height: 340,
                      padding: const EdgeInsets.all(70),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(110),
                      ),
                      child: Center(
                        child: Text(look), // Display the respective look text
                      ),
                    ),
                  ),
              ],
            ),
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
          'Looks Page',
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
