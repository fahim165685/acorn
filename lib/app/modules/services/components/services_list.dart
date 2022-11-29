import 'package:flutter/material.dart';
import 'package:mktbaz/constants.dart';

class ResponsiveButton extends StatelessWidget {
  const ResponsiveButton({
    Key? key,
    required this.name,
    required this.press,
  }) : super(key: key);

  final String name;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: press,

       radius: 50,
       highlightColor: kPrimaryLightColor.withOpacity(0.4),
      child: Container(
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.all(10),
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0XFFEDEDED), borderRadius: BorderRadius.circular(10),
         boxShadow:[
           BoxShadow(
             offset: Offset(-5,-5),
             color: Colors.black.withOpacity(0.2),
             blurRadius: 5,
           ),
           BoxShadow(
             offset: Offset(2,5),
             color: kPrimaryLightColor.withOpacity(0.3),
             blurRadius: 10,
           ),

         ]

        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Container(
                height: 50,
                width: 7,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(name, style: TextStyle(fontSize: 18)),
                  Text(
                    "Learn More >",
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
