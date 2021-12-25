import 'package:bookinghotelapp/components/edge_insets.dart';
import 'package:bookinghotelapp/components/size_config.dart';
import 'package:flutter/material.dart';

ListView lisviewbuilder(double height, double width, double mLeft, double mTop,
    double mRight, double mBottom, String img) {
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    shrinkWrap: true,
    itemBuilder: (context, index) {
      return Container(
        margin: FromLTRB.getEgdeInsets(mLeft,mTop,mRight,mBottom),
        height: getUniqueHeight(height),
        width: getUniqueWidth(width),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: NetworkImage(
                  "$img$index"),
              fit: BoxFit.cover),
        ),
      );
    },
    itemCount: 10,
  );
}
