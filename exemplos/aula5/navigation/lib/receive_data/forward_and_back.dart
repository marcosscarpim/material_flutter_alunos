import 'package:flutter/material.dart';

class FirstRoute extends StatefulWidget {
  String? result;

  FirstRoute({super.key});

  @override
  State<FirstRoute> createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Open route'),
              onPressed: () {
                _navigateAndDisplaySelection(context);
              },
            ),
            if (widget.result != null) ...[
              const SizedBox(height: 10),
              Text("${widget.result} pressed!"),
            ]
          ],
        ),
      ),
    );
  }

  Future<void> _navigateAndDisplaySelection(BuildContext context) async {
    widget.result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SecondRoute()),
    );
    setState(() {});
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "First Button");
              },
              child: const Text('First back'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "Second Button");
              },
              child: const Text('Second back!'),
            ),
          ],
        ),
      ),
    );
  }
}
