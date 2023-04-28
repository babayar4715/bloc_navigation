import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'main.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocBuilder<MyBloc, MyState>(
        //  state is StateA ? PageA() : PageB(),
        builder: (_, state) => state is StateNextPage ? NextPage() : PageB(),
      ),
    );
  }
}

class PageA extends StatelessWidget {
  const PageA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page A '),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.read<MyBloc>().add(EventB());
          },
          child: const Text('Go to page B'),
        ),
      ),
    );
  }
}

class PageB extends StatelessWidget {
  const PageB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page B'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                context.read<MyBloc>().add(EventA());
              },
              child: const Text('Go to Page A'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                context.read<MyBloc>().add(EventNextPage());
              },
              child: const Text('Go To Next Page'),
            ),
          )
        ],
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Next Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.read<MyBloc>().add(EventA());
          },
          child: const Text('Go to back'),
        ),
      ),
    );
  }
}
