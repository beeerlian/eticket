import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wisata_app/model/jam_tayang.dart';
import 'package:wisata_app/model/kursi.dart';
import 'package:wisata_app/model/movie.dart';
import 'package:wisata_app/pages/MainPage.dart';
import 'package:wisata_app/pages/detail_screen_hybird.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'dart:math';

class PayingTicket extends StatefulWidget {
  final MovieData movie;
  final List<int> kursi;
  String jamTayang;
  Future<void> delay(context) async {
    await Future.delayed(Duration(seconds: 20));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return MainPage();
    }));
    return Future.delayed(Duration(seconds: 10));
  }

  PayingTicket(
      {required this.movie, required this.kursi, required this.jamTayang});

  @override
  _PayingTicketState createState() => _PayingTicketState();
}

class _PayingTicketState extends State<PayingTicket> {
  Random random = new Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Column(children: [
                Text("Konfirmasi Pembayaran",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                SizedBox(height: 30),
                Row(
                  children: [
                    Container(width: 90, child: Text("Judul ")),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          ": ${widget.movie.name}",
                          style: TextStyle(fontSize: 15),
                        )),
                  ],
                ),
                Row(
                  children: [
                    Container(width: 90, child: Text("Kursi Nomor")),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          ": ${widget.kursi.join(", ")}",
                          style: TextStyle(fontSize: 15),
                        )),
                  ],
                ),
                Row(
                  children: [
                    Container(width: 90, child: Text("Jam Tayang")),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          ": ${widget.jamTayang}",
                          style: TextStyle(fontSize: 15),
                        )),
                  ],
                ),
                Row(
                  children: [
                    Container(width: 90, child: Text("Total Harga")),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          ": Rp. ${widget.kursi.length * 25000}",
                          style: TextStyle(fontSize: 15),
                        )),
                  ],
                ),
              ]),
            ),
            Center(
              child: Column(
                children: [
                  QrImage(
                    data: "${random.nextInt(30)}",
                    version: QrVersions.auto,
                    size: 190.0,
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 80),
                      child: Text(
                        "Scan barcode diatas untuk melakukan pembayaran via gopay",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ))
                ],
              ),
            ),
            FutureBuilder(
              builder: (context, a) {
                return Container(
                  color: Colors.white,
                  height: 15,
                );
              },
              future: widget.delay(context),
            ),
          ],
        ),
      ),
    );
  }
}

class BuyTicket extends StatefulWidget {
  final MovieData movie;
  // final int gridCount;
  BuyTicket({required this.movie});

  @override
  _BuyTicketState createState() => _BuyTicketState();
}

class _BuyTicketState extends State<BuyTicket> {
  String jamTayangFinal = "";
  bool jamSelected = false;
  int selectedCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Stack(
            children: [
              Image.asset(widget.movie.imageAsset),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black12,
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      FavoriteButton(),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Text(
              "Detail Tiket",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Text(
                    "Pilih tempat duduk :",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
                Container(
                    width: 300,
                    height: 20,
                    color: Colors.black54,
                    child: Center(
                        child: Text("layar",
                            style: TextStyle(color: Colors.white)))),
                SizedBox(
                  height: 340,
                  child: GridView.count(
                    crossAxisCount: 6,
                    children:
                        List.generate(widget.movie.kursiList.length, (index) {
                      return LayoutBuilder(
                        builder: (context, constaint) {
                          if (widget.movie.kursiList[index].isBooked == true) {
                            return Card(
                                color: Colors.white10,
                                child: Center(
                                    child: Text(
                                  (index + 1).toString(),
                                  style: TextStyle(color: Colors.white),
                                )));
                          } else if (widget.movie.kursiList[index].isSelected ==
                              true) {
                            return InkWell(
                              onTap: () {
                                widget.movie.kursiList[index].isSelected =
                                    false;
                                kursiDipilih.removeWhere((element) =>
                                    element ==
                                    widget.movie.kursiList[index].posisi);
                                selectedCount--;
                                setState(() {});
                              },
                              child: Card(
                                  color: Colors.green,
                                  child: Center(
                                      child: Text(
                                    (index + 1).toString(),
                                    style: TextStyle(color: Colors.white),
                                  ))),
                            );
                          } else {
                            return InkWell(
                              onTap: () {
                                widget.movie.kursiList[index].isSelected = true;
                                selectedCount++;
                                kursiDipilih
                                    .add(widget.movie.kursiList[index].posisi);
                                setState(() {});
                              },
                              child: Card(
                                  color: Colors.white,
                                  child: Center(
                                      child: Text(
                                    (index + 1).toString(),
                                    style: TextStyle(color: Colors.black),
                                  ))),
                            );
                          }
                        },
                      );
                    }),
                  ),
                ),
                Align(
                  alignment: Alignment(0.9, 0),
                  child: Text("Jumlah kursi dipilih : $selectedCount"),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 200,
                  child: GridView.count(
                    crossAxisCount: 4,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    children: List.generate(
                      jamTayangList.length,
                      (index) {
                        return ElevatedButton(
                            onPressed: () {
                              jamSelected = !jamSelected;
                              jamTayangList[index].isSelected =
                                  !jamTayangList[index].isSelected;
                              for (int i = 0; i < jamTayangList.length; i++) {
                                if (jamTayangList[i] != jamTayangList[index]) {
                                  jamTayangList[i].isSelected = false;
                                }
                              }
                              jamTayangList[index].isSelected
                                  ? jamTayangFinal = jamTayangList[index].waktu
                                  : jamTayangFinal = "";
                              setState(() {});
                            },
                            child: Text(
                              jamTayangList[index].waktu,
                              style: TextStyle(
                                  color: jamTayangList[index].isSelected
                                      ? Colors.white
                                      : Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    //to set border radius to button
                                    borderRadius: BorderRadius.circular(30)),
                                primary: jamTayangList[index].isSelected
                                    ? Colors.blue
                                    : Colors.white));
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (selectedCount > 0 && jamSelected == true) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return PayingTicket(
                              movie: widget.movie,
                              kursi: kursiDipilih,
                              jamTayang: jamTayangFinal);
                        }));
                        for (int j = 0; j < kursiDipilih.length; j++) {
                          for (int i = 0; i < kursi.length; i++) {
                            if (kursi[i].posisi == kursiDipilih[j]) {
                              kursi[i].isBooked=true;
                              break;
                            }
                            kursi[i].isSelected = false;
                          }
                        }
                      }
                    },
                    child: Text("BUY")),
              ],
            ),
          ),
          SizedBox(height: 60)
        ],
      ),
    );
  }
}
