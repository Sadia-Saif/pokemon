import 'package:flutter/material.dart';

import '../Controllers/poke_controller.dart';
import '../models/base.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // search field
        // user will give an input (sports/technology)
        // search based on that input given

        title: const Text("Pokemon"),
      ),
      body: FutureBuilder<Base>(
        future: PokemonController().getPoke('name', 'url'),
        builder: (context, snapshot) {
          // state is loading
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          // state is success
          if (snapshot.connectionState == ConnectionState.done) {
            final base = snapshot.data!;
            final results = base.results;
            return ListView.builder(
              itemCount: results.length,
              itemBuilder: (context, index) {
                final article = results[index];

                return Card(
                  child: Row(
                    children: [
                      ListTile(
                        title: Text(article.name),
                        subtitle: Text(article.url),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    ],
                  ),
                );
              },
            );
          }

          // state is failure
          if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }

          return const Center(
            child: Text("Something unexpected happened!"),
          );
        },
      ),
    );
  }
}
