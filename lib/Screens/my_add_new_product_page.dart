import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:my_store_app/Methods/my_show_snack_bar_method.dart';
import 'package:my_store_app/Services/My_Post_Request/my_add_new_product_service.dart';
import 'package:my_store_app/Widgets/my_add_text_field.dart';
import 'package:my_store_app/Widgets/my_custom_appbar.dart';
import 'package:my_store_app/Widgets/my_custom_button.dart';

class MyAddNewProductPage extends StatefulWidget {
  const MyAddNewProductPage({super.key});
  static String id = "MyAddNewProductPage";

  @override
  State<MyAddNewProductPage> createState() => _MyAddNewProductPageState();
}

class _MyAddNewProductPageState extends State<MyAddNewProductPage> {
  String? newProductTitLe,
      newProductPrice,
      newProductDescription,
      newProductImage,
      newProductCategory;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
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
            appBarTitLe: "Add New Product",
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyAddTextFieLd(
                  hintText: "Add Your New Product TitLe",
                  labelText: "New Product TitLe",
                  onChanged: (value) {
                    newProductTitLe = value;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                MyAddTextFieLd(
                  hintText: "Add Your New Product Price",
                  labelText: "New Product Price",
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    newProductPrice = value;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                MyAddTextFieLd(
                  hintText: "Add Your New Product Description",
                  labelText: "New Product Description",
                  onChanged: (value) {
                    newProductDescription = value;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                MyAddTextFieLd(
                  hintText: "Add Your New Product Image",
                  labelText: "New Product Image",
                  onChanged: (value) {
                    newProductImage = value;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                MyAddTextFieLd(
                  hintText: "Add Your New Product Category",
                  labelText: "New Product Category",
                  onChanged: (value) {
                    newProductCategory = value;
                  },
                ),
                const SizedBox(
                  height: 45,
                ),
                MyCustomButton(
                  buttonName: "Add",
                  onTap: () async {
                    isLoading = true;
                    setState(() {});
                    try {
                      await myAddNewProductMethod();
                      if (!context.mounted) return;
                      myShowSnackBarMethod(
                        context,
                        "New Product Has Been Added SuccessfuLLy.",
                      );
                      Navigator.pop(context);
                    } catch (e) {
                      debugPrint(e.toString());
                    }
                    isLoading = false;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> myAddNewProductMethod() async {
    await MyAddNewProductService().myAddNewProductService(
      newProductTitLe: newProductTitLe!,
      newProductPrice: newProductPrice!,
      newProductDescription: newProductDescription!,
      newProductImage: newProductImage!,
      newProductCategory: newProductCategory!,
    );
  }
}
