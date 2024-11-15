import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_store_app/ModeLs/my_product_model.dart';
import 'package:my_store_app/Services/My_Get_Request/my_get_category_service.dart';
import 'package:my_store_app/Widgets/my_custom_appbar.dart';
import 'package:my_store_app/Widgets/my_product_card.dart';

class MyCategoryYouChoosePage extends StatelessWidget {
  const MyCategoryYouChoosePage({super.key});
  static String id = "MyCategoryYouChoosePage";

  @override
  Widget build(BuildContext context) {
    String category = ModalRoute.of(context)!.settings.arguments as String;
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
          appBarTitLe: "The Category You Choose",
        ),
      ),
      body: FutureBuilder<List<MyProductModeL>>(
        future: MyGetCategoryService().myGetCategoryService(
          categoryName: category,
        ),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<MyProductModeL> myProductsList = snapshot.data!;
            return GridView.builder(
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
                top: 65,
              ),
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 65,
                crossAxisSpacing: 5,
                childAspectRatio: 1,
              ),
              itemCount: myProductsList.length,
              itemBuilder: (context, index) {
                return MyProductCard(
                  myProduct: myProductsList[index],
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
