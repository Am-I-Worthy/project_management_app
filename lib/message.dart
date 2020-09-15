import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color color = Color(0xff467AFF);

class Message extends StatefulWidget {
  final int level;
  final int toggle;
  Message({this.level,this.toggle});
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return AnimatedPositioned(
      duration: Duration(milliseconds: 375),
      curve: Curves.easeOut,
      right: (widget.level == 3 && widget.toggle == 0) ? -300.0 : 0.0,
      child: Container(
        height: height,
        width: (widget.level == 3) ? 300.0 : width * 0.27,
        color: Color(0xffF8FAFD),
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 85.0,
                  ),
                  MessageBox(
                    image:
                        'https://images.unsplash.com/photo-1558730234-d8b2281b0d00?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
                    sender: 'Percy Jackson',
                    time: 'at 2:30 pm',
                    message:
                        'You must complete this task today before 6 pm and send the report to the accountant\'s mail',
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text(
                            'Today',
                            style: GoogleFonts.merriweatherSans(
                              color: Color(0xffC2C5CF),
                              fontSize: 13.0,
                            ),
                          ),
                          Text(
                            '8th July 2019',
                            style: GoogleFonts.hindMadurai(
                              color: Color(0xffC1C7D6),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  MessageBox(
                    image:
                        'https://images.unsplash.com/photo-1525373953925-d9ed9fde387b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1894&q=80',
                    sender: 'Richard Parker',
                    time: 'at 6:30 pm',
                    message: 'Here is my files!',
                  ),
                  MessageBox(
                    image:
                        'https://images.unsplash.com/photo-1589081318939-f9952734290f?ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80',
                    sender: 'Jake Peterson',
                    time: 'at 6:30 pm',
                    message: 'Will mathew also attend the metting today?',
                  ),
                  MessageBox(
                    image:
                        'https://images.unsplash.com/photo-1589067400702-57d0adc29145?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1190&q=80',
                    sender: 'Mary Allen',
                    time: 'at 6:30 pm',
                    message:
                        'Notify me when the report will be sent. Sometimes I feel cold. Say something saying now!',
                  ),
                  SizedBox(
                    height: 85.0,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0.0,
              child: Container(
                color: Color(0xffF8FAFD),
                padding: EdgeInsets.only(
                    left: 30.0, right: 30.0, bottom: 10.0, top: 10.0),
                height: 70.0,
                width: (widget.level == 3) ? 300.0 : width * 0.27,
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Container(
                      margin: EdgeInsets.all(7.0),
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Color(0xffffffff),
                        size: 16.0,
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Color(0xffeaf1f7),
                  ),
                ),
              ),
            ),
            Container(
              height: 90.0,
              padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
              color: Color(0xffF8FAFD),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Conversation',
                    style: GoogleFonts.merriweatherSans(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Icon(
                      Icons.tune,
                      color: Color(0xffA0A9C0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MessageBox extends StatelessWidget {
  final String sender;
  final String message;
  final String time;
  final String image;
  MessageBox({
    this.message,
    this.sender,
    this.time,
    this.image,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30.0, top: 7.0, bottom: 7.0, right: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                height: 32.0,
                width: 32.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sender,
                    style: GoogleFonts.merriweatherSans(
                      fontSize: 11.0,
                      color: Color(0xff242D42),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    time,
                    style: GoogleFonts.oxygen(
                      fontSize: 9.0,
                      color: Color(0xffABB1BC),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0, left: 50.0),
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
            decoration: BoxDecoration(
              color: (sender == 'Richard Parker') ? color : Color(0xffEDF3FA),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              message,
              style: GoogleFonts.hindMadurai(
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
                color: (sender == 'Richard Parker')
                    ? Colors.white
                    : Color(0xff7A86A1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
