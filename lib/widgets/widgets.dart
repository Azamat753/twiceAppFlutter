import 'package:flutter/material.dart';

import '../core.dart';
import '../models/memberModel.dart';

Widget memberCard(Member member, context) {
  return Column(
    children: [
      Expanded(
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            Image.asset(loadImage(member.image),),
            transparentCardWithName(member),
          ],
        ),
      ),
      detailedButton()
    ],
  );
}

Widget transparentCardWithName(Member member) {
  return Positioned(
      bottom: 0,
      right: 1,
      left: 1,
      child: Container(
        color: Colors.black54,
        child: Container(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  member.name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  member.position,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )),
      ));
}

Container detailedButton() {
  return Container(
    height: 24,
    margin: const EdgeInsets.symmetric(vertical: 12),
    child: ElevatedButton(
      child: Text(
        "Подробнее",
        style: TextStyle(fontSize: 12),
      ),
      onPressed: () => null,
      style: ElevatedButton.styleFrom(
        primary: Colors.red,
        onPrimary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    ),
  );
}

Container orangeButton(double height,double  width, text,listener) {
  return Container(
    height: height,
    width: width,
    margin: const EdgeInsets.only(top: 12),
    child: ElevatedButton(
      child: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
      onPressed: () => listener,
      style: ElevatedButton.styleFrom(
        primary: Colors.red,
        onPrimary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    ),
  );
}
  Widget membersGrid(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.height,
      child: GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 40,
          childAspectRatio: 1,
        ),
        itemCount: memberList.length,
        itemBuilder: (context, index) {
          return memberCard(memberList[index], context);
        },
      ),
    );
  }

  Widget subTitleText(textSub) {
    return Text(
      textSub,
      style: TextStyle(color: Colors.grey, fontSize: 16),
    );
  }

  Widget titleText(textTitle) {
    return Padding(
      padding: EdgeInsets.only(top: 12),
      child: Text(
        textTitle,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }