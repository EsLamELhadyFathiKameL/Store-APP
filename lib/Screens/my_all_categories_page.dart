import 'package:flutter/material.dart';
import 'package:my_store_app/Widgets/my_custom_appbar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyALLCategoriesPage extends StatelessWidget {
  const MyALLCategoriesPage({super.key});
  static String id = "MyALLCategoriesPage";

  @override
  Widget build(BuildContext context) {
    List myALLCategories = ModalRoute.of(context)!.settings.arguments as List;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            MdiIcons.arrowLeft,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const MyCustomAppbar(
          appBarTitLe: "ALL Categories",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 65,
                width: double.infinity,
                color: Colors.grey,
                alignment: Alignment.center,
                child: Text(
                  "Category 1 : ${myALLCategories[0]}",
                  style: const TextStyle(
                    fontSize: 15,
                    fontFamily: "Pacifico",
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: 65,
                width: double.infinity,
                color: Colors.grey,
                alignment: Alignment.center,
                child: Text(
                  "Category 2 : ${myALLCategories[1]}",
                  style: const TextStyle(
                    fontSize: 15,
                    fontFamily: "Pacifico",
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: 65,
                width: double.infinity,
                color: Colors.grey,
                alignment: Alignment.center,
                child: Text(
                  "Category 3 : ${myALLCategories[2]}",
                  style: const TextStyle(
                    fontSize: 15,
                    fontFamily: "Pacifico",
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: 65,
                width: double.infinity,
                color: Colors.grey,
                alignment: Alignment.center,
                child: Text(
                  "Category 4 : ${myALLCategories[3]}",
                  style: const TextStyle(
                    fontSize: 15,
                    fontFamily: "Pacifico",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
