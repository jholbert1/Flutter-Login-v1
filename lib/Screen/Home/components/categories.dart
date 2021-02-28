import 'package:flutter/material.dart';
import 'package:loginsignup2/constants.dart';

// Handler Categoty change data
class CategoryList extends StatefulWidget {
  CategoryList({Key key}) : super(key: key);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectCateogry = 0;
  List<String> caregories = ["In Theater", "Box Office", "Comming Soon"];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 60.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: caregories.length,
        itemBuilder: (BuildContext context, int index) {
          return buildCategory(index, context);
        },
      ),
    );
  }

  Padding buildCategory(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectCateogry = index;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              caregories[index],
              style: Theme.of(context).textTheme.headline5.copyWith(
                  fontWeight: FontWeight.w600,
                  color: index == selectCateogry
                      ? kTextColor
                      : Colors.black.withOpacity(0.4)),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              height: 6.0,
              width: 40.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: index == selectCateogry
                      ? kSecondaryColor
                      : Colors.transparent),
            )
          ],
        ),
      ),
    );
  }
}
