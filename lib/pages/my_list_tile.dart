import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String iconImagepath;
  final String titleTitle;
  final String titleSubTitle;

  const MyListTile({
    Key? key,
    required this.iconImagepath,
    required this.titleTitle,
    required this.titleSubTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: (Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //icon
          Container(
            height: 50,
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(50),
            ),
            child: Image.asset(
              iconImagepath,
            ),
          ),

          SizedBox(width: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'titleTitle;',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'titleSubTitle',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
          Icon(Icons.arrow_forward),
        ],
      )),
    );
  }
}
