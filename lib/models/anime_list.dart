// ignore_for_file: camel_case_types

class myAnimeList {
  final String nome;
  final String temporadas;
  final String nota;
  final List<String> imagem;
  bool favorito;

  myAnimeList(
      {required this.nome,
      required this.temporadas,
      required this.nota,
      required this.imagem,
      this.favorito = false});
}

List<myAnimeList> lista = [
  myAnimeList(
      nome: 'Shingeki No Kyojin',
      temporadas: '4 Temporadas',
      nota: 'IMDb 4.7/5',
      imagem: ['assets/shingeki.jpeg', 'assets/shingeki_logo.png']),
  myAnimeList(
      nome: 'Shield Hero',
      temporadas: '3 Temporadas',
      nota: 'IMDb 4.0/5',
      imagem: ['assets/shieldhero.jpeg', 'assets/shieldhero_logo.png']),
  myAnimeList(
      nome: 'Ansatsu Kyoshitsu',
      temporadas: '3 Temporadas',
      nota: 'IMDb 4.8/5',
      imagem: ['assets/ansatsu.jpeg', 'assets/ansatsu_logo.png']),
  myAnimeList(
      nome: 'Jujutsu Kaisen',
      temporadas: '3 Temporadas',
      nota: 'IMDb 4.9/5',
      imagem: ['assets/jujutsu.jpeg', 'assets/jujutsu_logo.png']),
  myAnimeList(
      nome: 'Berserk',
      temporadas: '2 Temporadas',
      nota: 'IMDb 4.9/5',
      imagem: ['assets/berserk.jpeg', 'assets/berserk_logo.png']),
  myAnimeList(
      nome: 'Re: Zero',
      temporadas: '3 Temporadas',
      nota: 'IMDb 4.2/5',
      imagem: ['assets/rezero.jpeg', 'assets/rezero_logo.png']),
  myAnimeList(
      nome: 'Nanatsu no Taizai',
      temporadas: '3 Temporadas',
      nota: 'IMDb 3.2/5',
      imagem: ['assets/nanatsu.jpeg', 'assets/nanatsu_logo.png']),
];
