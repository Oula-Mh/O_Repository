import 'dart:core';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_color.dart';

class ChoseBetween extends StatefulWidget {
  const ChoseBetween({super.key});

  @override
  State<ChoseBetween> createState() => _ChoseBetweenState();
}

class _ChoseBetweenState extends State<ChoseBetween> {
  bool sales = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child:
          Card(
            elevation: 2,
            shadowColor: Colors.white,
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)) ,
            child:  Row(
              children: [
                Expanded(

                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        sales = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: sales
                              ? AppColor.primaryColor
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(30)),

                      //  elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Center(
                          child: Text(
                            'المبيعات',
                            style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Poppins',
                                color: sales ? Colors.white : Colors.black54,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),

                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        sales = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: !sales
                              ? AppColor.primaryColor
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(30)),

                      //  elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Center(
                          child: Text(
                            'المنتجات',
                            style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Poppins',
                                color:!sales ? Colors.white : Colors.black54,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),

                ),
              ],
            ),
          ),
     
    );
  }
}

class SelectTitle extends StatefulWidget {
  SelectTitle(
      {required this.not,
      required this.title,
      required this.sales,
      super.key});
  bool sales;
  String title;
  bool not;

  @override
  State<SelectTitle> createState() => _SelectTitleState();
}

class _SelectTitleState extends State<SelectTitle> {
  bool sales = true;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            sales = widget.sales;
          });
        },
        child: Container(
          decoration: BoxDecoration(
              color: widget.not
                  ? !sales
                      ? AppColor.primaryColor
                      : Colors.transparent
                  : sales
                      ? AppColor.primaryColor
                      : Colors.transparent,
              borderRadius: BorderRadius.circular(30)),

          //  elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Center(
              child: Text(
                widget.title,
                style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Poppins',
                    color: widget.not
                        ? !sales
                        ? Colors.white
                        :Colors.black54
                        : widget.sales
                        ? Colors.white
                        : Colors.black54,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
