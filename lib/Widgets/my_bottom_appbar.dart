import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_store_app/Methods/my_bottom_sheet_method.dart';
import 'package:my_store_app/Screens/my_add_new_product_page.dart';
import 'package:my_store_app/Screens/my_all_categories_page.dart';
import 'package:my_store_app/Services/My_Get_Request/my_get_all_categories_service.dart';

class MyBottomAppbar extends StatelessWidget {
  const MyBottomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8,
        right: 8,
        bottom: 8,
      ),
      child: BottomAppBar(
        height: 65,
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                MdiIcons.cart,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                MdiIcons.heart,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {
                myShowModaLBottomSheetMethod(context);
              },
              icon: Icon(
                MdiIcons.searchWeb,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, MyAddNewProductPage.id);
              },
              icon: Icon(
                MdiIcons.plus,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () async {
                List myALLCategories = await MyGetALLCategoriesService()
                    .myGetALLCategoriesService();
                if (!context.mounted) return;
                Navigator.pushNamed(context, MyALLCategoriesPage.id,
                    arguments: myALLCategories);
              },
              icon: Icon(
                MdiIcons.menu,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}