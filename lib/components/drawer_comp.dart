import 'package:flutter/material.dart';
import 'package:google_clone/utils/global.dart';

class DrawerComp extends StatelessWidget {
  const DrawerComp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Google",
                style: Theme.of(context).textTheme.bodyMedium!.merge(
                      const TextStyle(color: Colors.white, fontSize: 40),
                    ),
              ),
            ),
            for (int i = 0; i < drawerList.keys.length; i++) ...[
              ListTile(
                title: Text(
                  drawerList.keys.toList()[i],
                  style: Theme.of(context).textTheme.bodyMedium!.merge(
                        const TextStyle(color: Colors.white, fontSize: 15),
                      ),
                ),
                leading: Icon(
                  drawerList[drawerList.keys.toList()[i]],
                  color: Colors.white,
                ),
              )
            ]
          ],
        ),
      ),
    );
  }
}
