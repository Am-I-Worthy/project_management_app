import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List<bool> isSelected = [true, false, false, false, false, false];
List<NavElement> navElements = [
  NavElement(),
  NavElement(),
  NavElement(),
  NavElement(),
  NavElement(),
  NavElement(),
];
List<String> texts = [
  'Dashboard',
  'Project',
  'Calendar',
  'Conservation',
  'Tasks',
  'Settings',
];
List<IconData> icons = [
  Icons.dashboard,
  Icons.folder,
  Icons.calendar_today,
  Icons.message,
  Icons.playlist_add_check,
  Icons.settings,
];

Color color = Color(0xff467AFF);

class SideBar extends StatefulWidget {
  final int level;
  SideBar({this.level});
  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  void select(int n) {
    for (int i = 0; i < 6; i++) {
      if (i == n)
        isSelected[i] = true;
      else
        isSelected[i] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width * 0.07);
    return AnimatedContainer(
      duration: Duration(milliseconds: 375),
      height: MediaQuery.of(context).size.height,
      width:
          (widget.level == 2) ? 75.0 : MediaQuery.of(context).size.width * 0.18,
      color: Colors.white,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  height: 40.0,
                  width: 200.0,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        height: 50.0,
                        width: 40.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1525373953925-d9ed9fde387b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1894&q=80',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      AnimatedOpacity(
                        opacity: (widget.level == 2) ? 0.0 : 1.0,
                        duration: Duration(milliseconds: 400),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 375),
                          width: (widget.level == 2) ? 0.0 : 110.0,
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Richard Parker',
                                  style: GoogleFonts.merriweatherSans(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Lead Designer',
                                  style: GoogleFonts.merriweatherSans(
                                    fontSize: 11.0,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: navElements
                      .map(
                        (e) => NavElement(
                          level: widget.level ?? 1,
                          index: navElements.indexOf(e),
                          text: (widget.level == 2)
                              ? ''
                              : texts[navElements.indexOf(e)],
                          icon: icons[navElements.indexOf(e)],
                          active: isSelected[navElements.indexOf(e)],
                          onTap: () {
                            setState(() {
                              select(navElements.indexOf(e));
                            });
                          },
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 375),
            bottom: 35.0,
            left: (widget.level == 2) ? 15.0 : 50.0,
            child: Container(
              width: (widget.level == 2) ? 45.0 : 110.0,
              child: Center(
                child: FlatButton(
                  onPressed: () {},
                  color: color,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0.0),
                    child: (widget.level == 2)
                        ? Icon(
                            Icons.add,
                            size: 15.0,
                            color: Colors.white,
                          )
                        : Text(
                            'Add Event',
                            style: GoogleFonts.merriweatherSans(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                  ),
                ),
              ),
            ),
          ),
          (widget.level == 2)
              ? Container()
              : Positioned(
                  top: MediaQuery.of(context).size.height / 2 - 40.0,
                  right: 10.0,
                  child: Container(
                    height: 50.0,
                    width: 4.0,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}

class NavElement extends StatefulWidget {
  final bool active;
  final Function onTap;
  final IconData icon;
  final String text;
  final int index;
  final int level;

  NavElement(
      {this.level, this.onTap, this.active, this.icon, this.text, this.index});

  @override
  _NavElementState createState() => _NavElementState();
}

Color conColor = Colors.white;

class _NavElementState extends State<NavElement> with TickerProviderStateMixin {
  AnimationController _tcc;
  Animation<Color> _tca;
  AnimationController _icc;
  Animation<Color> _ica;
  double width = 140.0;
  double opacity = 0.0;

  @override
  void initState() {
    super.initState();
    _tcc = AnimationController(
        duration: Duration(milliseconds: 150),
        reverseDuration: Duration(milliseconds: 200),
        vsync: this);
    _tca = ColorTween(begin: Colors.black26, end: Colors.black54).animate(
      CurvedAnimation(
        parent: _tcc,
        curve: Curves.easeOut,
        reverseCurve: Curves.easeIn,
      ),
    );

    _tcc.addListener(() {
      setState(() {});
    });

    _icc = AnimationController(
        duration: Duration(milliseconds: 150),
        reverseDuration: Duration(milliseconds: 150),
        vsync: this);
    _ica = ColorTween(begin: Colors.black54, end: color).animate(
      CurvedAnimation(
        parent: _icc,
        curve: Curves.easeOut,
        reverseCurve: Curves.easeIn,
      ),
    );

    _icc.addListener(() {
      setState(() {});
    });

    if (widget.active) {
      _icc.forward();
      _tcc.forward();
    }

    Future.delayed(Duration(milliseconds: 150 * (widget.index + 1)), () {
      setState(() {
        width = 0.0;
        opacity = 1.0;
        //print(1000 ~/ (6 - (widget.index)));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.active) {
      _icc.reverse();
    }
    return MouseRegion(
      onEnter: (value) {
        _tcc.forward();
      },
      onExit: (value) {
        _tcc.reverse();
      },
      opaque: false,
      child: GestureDetector(
        onTap: () {
          widget.onTap();
          _icc.forward();
          _tcc.forward();
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
          ),
          padding: EdgeInsets.only(left: 30.0, top: 15.0, bottom: 15.0),
          height: 55.0,
          width: 200.0,
          child: Row(
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 375),
                width: (widget.level == 2) ? 0.0 : 10.0,
                height: 0.0,
              ),
              Icon(
                widget.icon,
                color: widget.active ? _ica.value : _tca.value,
                size: 19.0,
              ),
              SizedBox(
                width: 8.0,
              ),
              Stack(
                children: [
                  AnimatedContainer(
                    duration: Duration(milliseconds: 375),
                    height: 60.0,
                    width: (widget.level == 2) ? 0.0 : 130.0,
                    alignment: Alignment((width == 0.0) ? -0.9 : -1.0,
                        (width == 0.0) ? 0.0 : -0.9),
                    child: AnimatedOpacity(
                      duration: Duration(milliseconds: 375),
                      opacity: opacity,
                      child: Text(
                        widget.text,
                        style: GoogleFonts.merriweatherSans(
                          fontWeight: FontWeight.bold,
                          color: widget.active ? _ica.value : _tca.value,
                          fontSize: 11.0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0.0,
                    child: AnimatedContainer(
                      height: 60.0,
                      width: width,
                      color: Colors.white,
                      duration: Duration(milliseconds: 375),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
