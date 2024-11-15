import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_store_app/Screens/my_category_you_choose_page.dart';

class MySearchTextFieLd extends StatelessWidget {
  const MySearchTextFieLd({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value) {
        Navigator.pushNamed(context, MyCategoryYouChoosePage.id,
            arguments: value);
      },
      style: const TextStyle(
        fontSize: 15,
        color: Colors.white,
      ),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(
            MdiIcons.searchWeb,
            color: Colors.white,
          ),
        ),
        hintText: "Enter Your Category",
        hintStyle: const TextStyle(
          fontSize: 15,
          color: Colors.white,
          fontFamily: "Pacifico",
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
