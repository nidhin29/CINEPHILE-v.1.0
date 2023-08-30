import 'package:app_3/Presentation/routes/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final zize = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(240, 42, 113, 179),
        leading: IconButton(
            onPressed: () {
              AutoRouter.of(context).replace(const HomeRoute());
            },
            icon: const Icon(Icons.close)),
        title: Padding(
          padding: EdgeInsets.only(left: zize * 0.2),
          child: const Text('Add Movie'),
        ),
        actions: [
          IconButton(
              onPressed: () {
                AutoRouter.of(context).replace(const HomeRoute());
              },
              icon: const Icon(Icons.check))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: zize * 0.04,
              right: zize * 0.04,
              top: zize * 0.04,
            ),
            child: SizedBox(
              width: zize * 6,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hoverColor: Colors.black,
                  hintText: 'Movies',
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: zize * 0.04,
              right: zize * 0.04,
              top: zize * 0.04,
            ),
            child: SizedBox(
              width: zize * 6,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hoverColor: Colors.black,
                  hintText: 'Category',
                ),
              ),
            ),
          ),
          SizedBox(
            height: zize * 0.2,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  width: zize * 0.1,
                  height: zize * 0.1,
                  margin:
                      EdgeInsets.only(left: zize * 0.04, right: zize * 0.01),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
