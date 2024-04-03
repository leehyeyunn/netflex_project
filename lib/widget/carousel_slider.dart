import 'package:flutter/material.dart';
import '../model/model_movie.dart';
// import 'package:carousel_slider/carousel_slider.dart';



//StatefulWidget 선언 이유? -> 단순히 이미지만 보여주는게 아닌 정보버튼/찜하기 등의 기능을 추가해야하기때문
class CarouselImage extends StatefulWidget {
  final List<Movie>? movies;

  CarouselImage({this.movies});

  _CarouselImageState createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  List<Movie>? movies;
  List<Widget>? images;
  List<String>? keywords;
  List<bool>? likes;
  int _currentPage = 0;
  String? _currentKeyword;

  @override
  void initState() {
    super.initState();
    movies = widget.movies;
    images = movies?.map((m) => Image.asset('./images/' + m.poster)).toList();
    keywords = movies?.map((m) => m.keyword).toList();
    likes = movies?.map((m) => m.like).toList();
    _currentKeyword = keywords![0];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
          ),
          // CarouselSlider(
          //   items: images,
          //   options:CarouselOptions( onPageChanged:(index, reason){
          //     setState((){
          //       _currentPage =index;
          //       _currentKeyword = keywords[_currentPage];
          //     });
          //   }),
          // ),
        ],
      ),
    );
  }
}
