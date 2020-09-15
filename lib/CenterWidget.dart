import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CenterWidget extends StatelessWidget {
  final int level;
  CenterWidget({this.level});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Positioned(
      top: 0.0,
      left: (level == 2 || level == 3) ? 75.0 : width * 0.18,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 375),
        height: MediaQuery.of(context).size.height,
        width: (level == 2)
            ? width - width * 0.27 - 75.0
            : (level == 3) ? width - 75.0 : width * 0.55,
        color: Color(0xffF1F6FA),
        child: SingleChildScrollView(
                  child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 45.0,
                  ),
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      color: Color(0xffeaf1f7),
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black26,
                      size: 18.0,
                    ),
                  ),
                  Spacer(),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 375),
                    height: 40.0,
                    width: (level == 2)
                        ? width - width * 0.27 - 75.0 - 150.0
                        : (level == 3)
                            ? width - 150.0 - 75.0
                            : width * 0.55 - 150.0,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0),
                            borderSide: BorderSide.none),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black26,
                        ),
                        labelText: 'Search',
                        labelStyle: GoogleFonts.merriweatherSans(
                            color: Colors.black26, fontSize: 13.0),
                        filled: true,
                        fillColor: Color(0xffeaf1f7),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 45.0,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                                    child: Padding(
                      padding: const EdgeInsets.only(left: 45.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            'Project\'s name',
                            style: GoogleFonts.merriweatherSans(
                              color: Colors.black26,
                              fontWeight: FontWeight.bold,
                              fontSize: 10.0,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'App Concept',
                            style: GoogleFonts.merriweatherSans(
                              fontWeight: FontWeight.bold,
                              fontSize: (level == 3) ? 25.0 : 30.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 45.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          'Members',
                          style: GoogleFonts.merriweatherSans(
                            color: Colors.black26,
                            fontWeight: FontWeight.bold,
                            fontSize: 10.0,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              height: 35.0,
                              width: 35.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1589067400702-57d0adc29145?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1190&q=80',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              height: 35.0,
                              width: 35.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1589081318939-f9952734290f?ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            (level == 3)
                                ? Container()
                                : Container(
                                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                                    height: 35.0,
                                    width: 35.0,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1589067400794-5e1fbbd2e464?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1190&q=80',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                            Text(
                              '+12',
                              style: GoogleFonts.merriweatherSans(
                                fontSize: 11.0,
                                color: Colors.black45,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: (level == 3) ? 0.0 : 20.0,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              height: 35.0,
                              width: 35.0,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 45.0,
                  ),
                  Container(
                    child: Text(
                      'Recent Files',
                      style: GoogleFonts.merriweatherSans(
                        color: Color(0xff2F374C),
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Container(
                    child: Text(
                      'Events',
                      style: GoogleFonts.merriweatherSans(
                        color: Color(0xffBDC2D0),
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Container(
                    child: Text(
                      'Tasks',
                      style: GoogleFonts.merriweatherSans(
                        color: Color(0xffBDC2D0),
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 40.0, right: 40.0),
                height: 2.0,
                width: width,
                decoration: BoxDecoration(
                  color: Color(0xffEDF3FA),
                  borderRadius: BorderRadius.circular(1.0),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 45.0,
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 375),
                    height: 150.0,
                    width: (level == 2)
                        ? (width - width * 0.27 - 75.0) / 1.9 - 50.0
                        : (level == 3)
                            ? (width - 75.0) / 1.9 - 50.0
                            : (width * 0.55) / 1.9 - 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1501644898242-cfea317d7faf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 375),
                    height: 150.0,
                    width: (level == 2)
                        ? (width - width * 0.27 - 75.0) / 2.2 - 50.0
                        : (level == 3)
                            ? (width - 75.0) / 2.2 - 50.0
                            : (width * 0.55) / 2.2 - 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1476287803067-f714aa78eaa7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1955&q=80'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 375),
                height: 170.0,
                width: (level == 2)
                    ? (width - width * 0.27 - 75.0) - 90.0
                    : (level == 3)
                        ? (width - 75.0) - 90.0
                        : (width * 0.55) - 90.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1550770418-f2a7541a47f6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
