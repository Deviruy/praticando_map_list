// ignore_for_file: unused_import, unnecessary_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:praticando_map_list/models/anime_list.dart';

class AnimeCard extends StatefulWidget {
  const AnimeCard({super.key, required this.animes});
  // required this.animes
  final myAnimeList animes;

  @override
  State<AnimeCard> createState() => _AnimeCardState();
}

class _AnimeCardState extends State<AnimeCard> {
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      height: screensize.height * 0.45,
      width: screensize.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(45),
        image: DecorationImage(
          image: AssetImage(widget.animes.imagem.first),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(24),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              GestureDetector(
                onTap: () => setState(() {
                  widget.animes.favorito = !widget.animes.favorito;
                }),
                child: widget.animes.favorito
                    ? const Icon(
                        Icons.favorite,
                        size: 30,
                        color: Colors.red,
                      )
                    : const Icon(
                        Icons.favorite_outline,
                        size: 30,
                        color: Colors.white,
                      ),
              ),
            ]),
          ),
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.transparent,
                    Colors.black,
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(45),
                    bottomRight: Radius.circular(45),
                  ),
                ),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        width: screensize.width * 0.4,
                        height: screensize.height * 0.25,
                        // color: Colors.white,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(widget.animes.imagem.last),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Column(children: [
                          Text(
                            widget.animes.temporadas,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 100,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.amber),
                            child: Center(
                              child: Text(
                                widget.animes.nota,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ]),
                      )
                    ],
                  ),
                ]),
              ),
            ],
          )
        ],
      ),
    );
  }
}
