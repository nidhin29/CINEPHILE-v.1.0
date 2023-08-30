import 'package:app_3/Presentation/routes/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final zize = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(240, 42, 113, 179),
        leading: IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: const Text('Are you sure you want to logout?'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          // Perform logout operation
                          AutoRouter.of(context)
                              .replace(const SignInRoute()); // Close the dialog
                        },
                        child: const Text('Yes'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // Close the dialog
                        },
                        child: const Text('No'),
                      ),
                    ],
                  );
                },
              );
            },
            icon: const Icon(Icons.logout_outlined)),
        title: Padding(
          padding: EdgeInsets.only(left: zize * 0.13),
          child: const Text('Favourite Movies'),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              child: GestureDetector(
                child: ListTile(
                  title: const Text('RDX'),
                  subtitle: const Text('Action'),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      )),
                ),
                onTap: () {
                  AutoRouter.of(context).replace(const DetailsRoute());
                },
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 50,
            );
          },
          itemCount: 30),
    );
  }
}
