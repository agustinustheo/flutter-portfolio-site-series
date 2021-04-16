import 'package:DiantarAje/widgets/appbar_widget.dart';
import 'package:DiantarAje/widgets/background_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlainBackground(
      appBar: MyAppBar("Limas", context: context).getAppBar(),
      isCenter: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NormalText('Hi, my name is'),
          SizedBox(height: 10),
          TitleText('Limas Jaya Akeh :)'),
          SubtitleText('I love anime!'),
          ConstrainedText('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s.',
            maxWidth: MediaQuery.of(context).size.width * 0.8
          ),
          OutlineButton(
            onPressed: () => launch('https://www.youtube.com/watch?v=Wp90CrP-s_8'),
            borderSide: BorderSide(
              color: Colors.blue[400]
            ),
            child: NormalText('Hololive')
          ),
          SectionTitleText('01. About Me'),
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.8
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    ConstrainedText('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s.',
                      maxWidth: 400.0,
                    ),
                    ConstrainedText('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s.',
                      maxWidth: 400.0,
                    ),
                  ],
                ),
                Image.network('https://media-exp1.licdn.com/dms/image/C5103AQEn4jvEUSXO1w/profile-displayphoto-shrink_200_200/0/1575567054873?e=1622678400&v=beta&t=e5B7yOR7XyT64YXxobwqBpuwEvAmYTanvvREJN1hWbE')
              ],
            )
          ),
        ],
      ),
    );
  }
}

class ConstrainedText extends StatelessWidget {
  final String text;
  final double maxWidth;

  const ConstrainedText(this.text, {
    this.maxWidth = 0,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: maxWidth != 0 ? maxWidth : double.infinity
      ),
      child: NormalText(text),
    );
  }
}

class NormalText extends StatelessWidget {
  final String text;
  final Color color;

  const NormalText(this.text, {
    this.color = Colors.black,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
        color: color,
        letterSpacing: 1
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  final String text;
  final Color color;

  const TitleText(this.text, {
    this.color = Colors.black,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: color,
        letterSpacing: 1
      ),
    );
  }
}

class SubtitleText extends StatelessWidget {
  final String text;
  final Color color;

  const SubtitleText(this.text, {
    this.color = Colors.black,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: color,
        letterSpacing: 1
      ),
    );
  }
}

class SectionTitleText extends StatelessWidget {
  final String text;
  final Color color;

  const SectionTitleText(this.text, {
    this.color = Colors.black,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: color,
        letterSpacing: 1
      ),
    );
  }
}