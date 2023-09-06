import 'package:flutter/material.dart';

class NewCard extends StatelessWidget {
  final String title;
  final String image;
  const NewCard({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 400,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              child: Image(
                errorBuilder: (context, error, stackTrace) {
                  return const Text("Image is Missing");
                },
                loadingBuilder: (context, child, loadingProgress) {
                  return loadingProgress == null
                      ? Center(
                          child: child,
                        )
                      : const SizedBox(
                          width: 400,
                          height: 200,
                          child: Center(child: CircularProgressIndicator()),
                        );
                },
                image: NetworkImage(image),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleMedium?.merge(
                      const TextStyle(fontSize: 20),
                    ),
              ),
            ),
          ],
        ));
  }
}
