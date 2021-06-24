import 'package:flutter/material.dart';
import 'package:nlwflutter/modules/home/home_controller.dart';
import 'package:nlwflutter/shared/themes/app_colors.dart';
import 'package:nlwflutter/shared/themes/app_text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  final pages = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(152),
        child: Container(
          height: 152,
          color: AppColors.primary,
          child: Center(
            child: ListTile(
              title: Text.rich(
                TextSpan(
                    text: "Olá, ",
                    style: TextStyles.titleRegular,
                    children: [
                      TextSpan(
                          text: "Patrick",
                          style: TextStyles.titleBoldBackground)
                    ]),
              ),
              subtitle: Text(
                "Mantenha as suas contas em dia",
                style: TextStyles.captionShape,
              ),
              trailing: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
        ),
      ),
      body: pages[controller.currentPage],
      bottomNavigationBar: Container(
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                icon: Icon(
                  Icons.home,
                  color: AppColors.primary,
                ),
                onPressed: () {
                  setState(() {
                    controller.setPage(0);
                  });
                }),
            GestureDetector(
              onTap: () {
                print("clicou");
              },
              child: Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.primary),
                child: IconButton(
                    icon: Icon(
                      Icons.add_box_outlined,
                      color: AppColors.background,
                    ),
                    onPressed: () {}),
              ),
            ),
            IconButton(
                icon: Icon(
                  Icons.description_outlined,
                  color: AppColors.body,
                ),
                onPressed: () {
                  setState(() {
                    controller.setPage(1);
                  });
                })
          ],
        ),
      ),
    );
  }
}
