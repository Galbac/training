import 'package:flutter/material.dart';
import 'package:training/images.dart';

class MovieDetailsScreenInfoWidget extends StatelessWidget {
  const MovieDetailsScreenInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Series Cast",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
            ),
          ),
          Container(
            height: 300,
            child: Scrollbar(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemExtent: 120,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.black.withOpacity(0.2),
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38.withOpacity(0.1),
                                  blurRadius: 8,
                                  offset: const Offset(0, 2),
                                ),
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              ClipRRect(
                                clipBehavior: Clip.hardEdge,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  child: Image(
                                      image: AssetImage(AppImages.actor))),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Бен Аффлек",maxLines: 1,),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Text("Отличный актер",maxLines: 4,),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                                child: Text("8 эпизодов",maxLines: 1,),
                              ),
                            ],
                          ),
                        ));
                  }),
            ),
          ),
          TextButton(onPressed: () {}, child: const Text("Full Cast & Crew"))
        ],
      ),
    );
  }
}

