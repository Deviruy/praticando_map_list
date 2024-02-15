// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:praticando_map_list/models/anime_list.dart';
import 'package:praticando_map_list/pages/widgets/anime_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: screensize.width,
        height: screensize.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF22E6B9), Color(0xFF7525B9)]),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: lista.map((e) => AnimeCard(animes: e)).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
