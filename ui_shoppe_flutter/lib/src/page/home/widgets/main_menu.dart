import 'package:flutter/material.dart';
import 'package:ui_shoppe_flutter/src/models/main_menu_model.dart';

import '../../../viewmodel/main_menu_viewmodel.dart';

class MainMenu extends StatelessWidget {

  final List<MainMenuModel> _menus = MainMenuViewModel().getMainMenu();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
            crossAxisSpacing: 2),
        itemBuilder: (context, index) {
          final MainMenuModel menu = _menus[index];
          return Column(
            children: [
              Container(
                width: 45,
                height: 45,
                color: Colors.white,

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(

                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.white),
                       //shape boder radius
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                          side: BorderSide(color: Colors.black12),
                        )),

                      ),
                      onPressed: (){},
                      child: Image.network("https://cdn1.iconfinder.com/data/icons/common-version-3-0/1024/Map-256.png",),
                    ),
                  )
              ),
              SizedBox(height: 10,),
              Text(menu.title,maxLines: 2,textAlign: TextAlign.center,)
            ],
          );
        },
        itemCount: 10,
      ),
    );
  }
}
