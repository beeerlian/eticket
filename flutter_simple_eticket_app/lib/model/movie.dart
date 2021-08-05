import 'package:wisata_app/model/kursi.dart';

class MovieData {
  String name,
      location,
      description,
      hariTayang,
      jamTayang,
      ticketPrice,
      imageAsset;

  List<Kursi> kursiList;
  List<String> imageUrls;
  MovieData(
      {required this.name,
      required this.location,
      required this.description,
      required this.hariTayang,
      required this.jamTayang,
      required this.ticketPrice,
      required this.imageAsset,
      required this.imageUrls,
      required this.kursiList});
}

List<Kursi> kursi = [
  Kursi(isBooked: false, posisi: 1, isSelected: false),
  Kursi(isBooked: false, posisi: 2, isSelected: false),
  Kursi(isBooked: false, posisi: 3, isSelected: false),
  Kursi(isBooked: false, posisi: 4, isSelected: false),
  Kursi(isBooked: false, posisi: 5, isSelected: false),
  Kursi(isBooked: false, posisi: 6, isSelected: false),
  Kursi(isBooked: false, posisi: 7, isSelected: false),
  Kursi(isBooked: false, posisi: 8, isSelected: false),
  Kursi(isBooked: false, posisi: 9, isSelected: false),
  Kursi(isBooked: false, posisi: 10, isSelected: false),
  Kursi(isBooked: false, posisi: 11, isSelected: false),
  Kursi(isBooked: false, posisi: 12, isSelected: false),
  Kursi(isBooked: false, posisi: 13, isSelected: false),
  Kursi(isBooked: false, posisi: 14, isSelected: false),
  Kursi(isBooked: false, posisi: 15, isSelected: false),
  Kursi(isBooked: false, posisi: 16, isSelected: false),
  Kursi(isBooked: false, posisi: 17, isSelected: false),
  Kursi(isBooked: false, posisi: 18, isSelected: false),
  Kursi(isBooked: false, posisi: 19, isSelected: false),
  Kursi(isBooked: false, posisi: 20, isSelected: false),
  Kursi(isBooked: false, posisi: 21, isSelected: false),
  Kursi(isBooked: false, posisi: 22, isSelected: false),
  Kursi(isBooked: false, posisi: 23, isSelected: false),
  Kursi(isBooked: false, posisi: 24, isSelected: false),
  Kursi(isBooked: false, posisi: 25, isSelected: false),
  Kursi(isBooked: false, posisi: 26, isSelected: false),
  Kursi(isBooked: false, posisi: 27, isSelected: false),
  Kursi(isBooked: false, posisi: 28, isSelected: false),
  Kursi(isBooked: false, posisi: 29, isSelected: false),
  Kursi(isBooked: false, posisi: 30, isSelected: false),
];
var dataMovieList = [
  MovieData(
      name: 'THE GREATEST SHOWMAN ',
      location: 'Studio 3',
      description:
          'Step right up... and into the spellbinding imagination of a man who set out to reveal that life itself can be the most thrilling show of all. Inspired by the legend and ambitions of America’s original pop-culture impresario, P.T. Barnum (Hugh Jackman), comes an inspirational rags-to-riches tale of a brash dreamer who rose from nothing to prove that anything you can envision is possible and that everyone, no matter how invisible, has a stupendous story worthy of a world-class spectacle.',
      hariTayang: 'Everyday',
      jamTayang: '09:00 - 22:00',
      ticketPrice: '25000',
      imageAsset: 'assets/images/tgs.png',
      imageUrls: [
        'https://cdn-2.tstatic.net/tribunnews/foto/bank/images/hugh-jackman-ungkap-kemungkinan-the-greatest-showman-akan-dibuat-sekuel.jpg',
      ],
      kursiList: kursi),
  MovieData(
      name: 'SPIRITED AWAY',
      location: 'Studio 4',
      description:
          'Set in rural Japan, “Spirited Away” opens with ten-year-old Chihiro and her parents on their way to a new home in the suburbs. Having taken a wrong turn, the family arrives at what they believe to be an abandoned amusement park. Chihiro’s parents are soon tempted by a buffet of irresistible food, which nearly consumes them as they consume it. They are quickly transformed into large squealing pigs. ',
      hariTayang: 'Everyday',
      jamTayang: '09:00 - 22:00',
      ticketPrice: 'Rp 25000',
      imageAsset: 'assets/images/sa.png',
      imageUrls: [
        'https://img.okezone.com/content/2019/06/25/33/2070885/setelah-18-tahun-spirited-away-akhirnya-tayang-di-china-NYJKYBQUYr.jpg',
      ],
      kursiList: kursi),
  MovieData(
      name: 'ME BEFORE YOU',
      location: 'Studio 5',
      description:
          'Oftentimes you find love where you least expect it. Sometimes it takes you where you never expected to go…Louisa “Lou” Clark (Game of Thrones’ Emilia Clarke) lives in a quaint town in the English countryside. With no clear direction in her life, the quirky and creative 26-year-old goes from one job to the next in order to help her tight-knit family make ends meet. Her normally cheery outlook is put to the test, however, when she faces her newest career challenge. Taking a job at the local “castle,” she becomes caregiver and companion to Will Traynor (The Hunger Games’ Sam Claflin), a wealthy young banker who became wheelchair bound in an accident two years prior, and whose whole world changed dramatically in the blink of an eye. No longer the adventurous soul he once was, the now cynical Will has all but given up. That is until Lou determines to show him that life is worth living.',
      hariTayang: 'Everyday',
      jamTayang: '09:00 - 22:00',
      ticketPrice: 'Rp. 25000',
      imageAsset: 'assets/images/mby.png',
      imageUrls: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEe_N3a5KHr75ahFQXErclCgZJNJoPDlPr5w&usqp=CAU',
      ],
      kursiList: kursi),
  MovieData(
      name: 'MIRACLE IN CELL NO 7',
      location: 'Studio 6',
      description:
          'Kisah kehidupan seorang ayah cacat mental yang memiliki seorang putri cerdas berusia 6 tahun. Mereka berdua dipisahkan akibat tuduhan pembunuhan, yang berakhir dengan hukuman mati terhadap sang ayah',
      hariTayang: 'Everyday',
      jamTayang: '09:00 - 22:00',
      ticketPrice: 'Rp 25000',
      imageAsset: 'assets/images/micn7.jpg',
      imageUrls: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBGbrM3Ae6pAgoWiyQqrqxQ41LASDtFO6TVg&usqp=CAU',
      ],
      kursiList: kursi),
  MovieData(
      name: 'ALI AND RATU RATU QUEENS',
      location: 'Studio 7',
      description:
          'After his fathers passing, a teenager sets out for New York in search of his estranged mother and soon finds love and connection in unexpected places.',
      hariTayang: 'Everyday',
      jamTayang: '09:00 - 22:00',
      ticketPrice: 'Rp 25000',
      imageAsset: 'assets/images/ali.png',
      imageUrls: [
        'https://i0.wp.com/www.hops.id/wp-content/uploads/2021/06/190147757_1161012834366944_3937408208589115448_nc.jpg?resize=780%2C470&ssl=1',
      ],
      kursiList: kursi),
  MovieData(
      name: '1917',
      location: 'Studio 8',
      description:
          'British trenches somewhere in France. World war has been going on for the third year, heroic illusions have dissipated; general mood - boredom and fatigue. Stuff the belly, sleep, return home to Christmas Eve. On another quiet day, when nothing happens, two young soldiers, Blake and Schofield, are summoned to the general, who instructs them to send an important message to Colonel MacKenzie in the Second Devonshire Battalion, whose telephone connection was cut off by the enemy.',
      hariTayang: 'Everyday',
      jamTayang: '09:00 - 22:00',
      ticketPrice: 'Rp 25000',
      imageAsset: 'assets/images/1917.png',
      imageUrls: [
        'https://upload.wikimedia.org/wikipedia/en/f/fe/1917_%282019%29_Film_Poster.jpeg',
      ],
      kursiList: kursi),
  MovieData(
      name: 'Train To Busan',
      location: 'Studio 9',
      description:
          'The investment manager Seok-woo is a divorced man that lives in Seoul, with his daughter, Soo-an, and his mother. Seok-woo is a selfish man and neglects Soo-an, who misses her mother that lives in Busan. On Soo-an birthday, she asks to visit her mother, and Seok-woo travels with her with the intention of returning after lunch. They board the fast train KTX, but a sick woman also boards another car. During the journey, the woman attacks a member of the train staff and soon all the passengers in the car are attacked, turning into zombies. ',
      hariTayang: 'Everyday',
      jamTayang: '09:00 - 22:00',
      ticketPrice: 'Rp 25000',
      imageAsset: 'assets/images/ttb.png',
      imageUrls: [
        'https://cdn0-production-images-kly.akamaized.net/NLXDo7DGzw920CoBHta8TDtIViw=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3233570/original/047880900_1599684220-TVN_Cover-Title-Thumbnail.jpg',
      ],
      kursiList: kursi),
  MovieData(
      name: 'Avengers End Game',
      location: 'Studio 1',
      description:
          'Melanjutkan Avengers Infinity War, dimana kejadian setelah Thanos berhasil mendapatkan semua infinity stones dan memusnahkan 50% semua mahluk hidup di alam semesta. Akankah para Avengers berhasil mengalahkan Thanos?.',
      hariTayang: 'Everyday',
      jamTayang: '09:00 - 21:00',
      ticketPrice: 'Rp 25000',
      imageAsset: 'assets/images/end-game.png',
      imageUrls: [
        'https://lumiere-a.akamaihd.net/v1/images/p_avengersendgame_19751_e14a0104.jpeg?region=0%2C0%2C540%2C810',
        'https://cdns.klimg.com/kapanlagi.com/p/headline/476x238/fakta-fakta-unik-avengers-endgame-di-in-97458a.jpg',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNbAY8bSV1m5KsKkB8J6qMNb95zjkIn6IjRg&usqp=CAU'
      ],
      kursiList: kursi),
  MovieData(
      name: 'Kimetsu No Yaiba : Mugen Train',
      location: 'Studio 2',
      description:
          'Tanjiro Kamado, bergabung dengan Inosuke Hashibira, seorang anak laki-laki yang dibesarkan oleh babi hutan yang memakai kepala babi hutan, dan Zenitsu Agatsuma, seorang anak laki-laki ketakutan yang mengeluarkan kekuatan sejatinya ketika dia tidur, di dalam Kereta Infinity dalam misi baru dengan seorang Pilar Api, Kyojuro Rengoku , Untuk mengalahkan iblis yang telah menyiksa orang-orang dan membunuh pembunuh iblis yang menentangnya!.',
      hariTayang: 'Tuesday - Saturday',
      jamTayang: '09:00 - 21:00',
      ticketPrice: 'Rp 25000',
      imageAsset: 'assets/images/kimetsu.png',
      imageUrls: [
        'https://static.wikia.nocookie.net/kimetsu-no-yaiba/images/1/13/Mugen_Train_Poster_3.png/revision/latest?cb=20201027083821',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFzPCYS9ygEAvcgQ17W5rx4TX3YNIg1kyRonsG9KT2V8e3bsbJygnnLs7ox--7f6J0ksY&usqp=CAU',
        'https://wallpapercave.com/wp/wp6301329.jpg',
      ],
      kursiList: kursi),
];
