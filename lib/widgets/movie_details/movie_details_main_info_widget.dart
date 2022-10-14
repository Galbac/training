import 'package:flutter/material.dart';
import 'package:training/images.dart';
import 'package:training/widgets/elements/radia_percent_widget.dart';

class MovieDetailsMainInfoWidget extends StatelessWidget {
  const MovieDetailsMainInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _TopPosterWidget(),
        const _PercentAndPlayWidget(),
        const Padding(padding: EdgeInsets.all(20), child: _MovieNameWidget()),
        const _GenryWidget(),
        _Overview(),
      ],
    );
  }
}

class _TopPosterWidget extends StatelessWidget {
  const _TopPosterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Image(
          image: AssetImage(AppImages.perlMalenkii),
        ),
        Positioned(
          top: 35,
          bottom: 0,
          child: Image(
            image: AssetImage(AppImages.perlBolshoi),
          ),
        ),
      ],
    );
  }
}

class _PercentAndPlayWidget extends StatelessWidget {
  const _PercentAndPlayWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              const SizedBox(
                width: 40,
                height: 40,
                child: RadialPercentWidget(
                  percent: 0.72,
                  fillColor: Color.fromARGB(255, 10, 23, 25),
                  lineColor: Color.fromARGB(255, 37, 203, 103),
                  freeColor: Color.fromARGB(255, 25, 54, 31),lineWidth: 3,
                  child: Text("72",style: TextStyle(color: Colors.white),),
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "User Score",
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
          Container(
            width: 1,
            height: 15,
            color: Colors.grey,
          ),
          Row(
            children: [
              const Icon(
                Icons.play_arrow,
                color: Colors.white,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "PlayTraller",
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

class _MovieNameWidget extends StatelessWidget {
  const _MovieNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      text: const TextSpan(children: [
        TextSpan(
          text: "Перл Харбор",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
        ),
        TextSpan(
          text: " (2021)",
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
      ]),
    );
  }
}

class _GenryWidget extends StatelessWidget {
  const _GenryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: Color.fromRGBO(22, 21, 25, 1.0),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 70),
        child: Text(
          "мывввввввввывмвымвымвsdvvvvvым",
          maxLines: 3,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  _Overview({Key? key}) : super(key: key);
  final peopleStyle = const TextStyle(
      fontWeight: FontWeight.w400, fontSize: 16, color: Colors.white);

  final jobStyle = const TextStyle(
      fontWeight: FontWeight.w400, fontSize: 16, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'OverView',
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 16, color: Colors.white),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Text(
            "fdggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg",
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 16, color: Colors.white),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ара",
                  style: peopleStyle,
                ),
                Text(
                  "Бери",
                  style: jobStyle,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ара",
                  style: peopleStyle,
                ),
                Text(
                  "Бери",
                  style: jobStyle,
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ара",
                  style: peopleStyle,
                ),
                Text(
                  "Бери",
                  style: jobStyle,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ара",
                  style: peopleStyle,
                ),
                Text(
                  "Бери",
                  style: jobStyle,
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
