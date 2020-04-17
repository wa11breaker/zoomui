import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboard extends StatefulWidget {
  const Onboard({Key key}) : super(key: key);
  @override
  _OnboardState createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  final List<Widget> introWidgetsList = <Widget>[
    OnboardDetails(
      title: 'Start a Meeting',
      subTitle: 'Start or join a video meeting on the go',
      image: 'undraw_social_friends_nsbv.svg',
    ),
    OnboardDetails(
      title: 'Share Your Content',
      subTitle: 'They see what you see',
      image: 'undraw_online_media_62jb.svg',
    ),
  ];

  int currentPageValue = 0;

  void getChangedPageAndMoveBar(int page) {
    currentPageValue = page;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: ScrollConfiguration(
            behavior: MyBehavior(),
            child: PageView.builder(
              physics: ClampingScrollPhysics(),
              itemCount: introWidgetsList.length,
              onPageChanged: (int page) {
                getChangedPageAndMoveBar(page);
              },
              itemBuilder: (context, intex) => introWidgetsList[intex],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 35),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              for (int i = 0; i < introWidgetsList.length; i++)
                if (i == currentPageValue) ...[circleBar(true)] else
                  circleBar(false),
            ],
          ),
        )
      ],
    );
  }

  Widget circleBar(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8),
      height: isActive ? 8 : 8,
      width: isActive ? 8 : 8,
      decoration: BoxDecoration(
          color: isActive ? Colors.blue : Colors.grey[300],
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }
}

class OnboardDetails extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  const OnboardDetails({
    Key key,
    this.title,
    this.subTitle,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          subTitle,
          style: TextStyle(fontSize: 14),
        ),
        Expanded(
          child: SvgPicture.asset(
            'assets/$image',
            height: 150.0,
          ),

          //  Image.asset('assets/undraw_social_friends_nsbv.svg')
        )
      ],
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
          BuildContext context, Widget child, AxisDirection axisDirection) =>
      child;
}
