import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  void _increment() {
    setState(() {
      _count += 1;
    });
  }

  void _decrement() {
    setState(() {
      _count -= 1;
    });
  }

  late dynamic _count;
  @override
  void initState() {
    _count = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Adding Item"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.all(9),
            child: Image.network(
              'https://mobilepriceall.com/wp-content/uploads/2022/09/Apple-iPhone-14-Pro-Max.jpg',
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: _decrement, child: const Icon(Icons.remove)),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: _increment,
                child: const Icon(Icons.add),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                _count.toString(),
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
