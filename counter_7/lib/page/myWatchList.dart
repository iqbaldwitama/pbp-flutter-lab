import 'package:counter_7/model/myWatchListModel.dart';
import 'package:counter_7/widget/drawer.dart';
import 'package:counter_7/page/detail.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class MyWatchListPage extends StatefulWidget {
    const MyWatchListPage({super.key});

    @override
    State<MyWatchListPage> createState() => _MyWatchListPageState();
}

class _MyWatchListPageState extends State<MyWatchListPage> {

    @override
    Widget build(BuildContext context) {
        double width = MediaQuery.of(context).size.width;
        return Scaffold(
            appBar: AppBar(
                title: const Text('My Watchlist'),
            ),
            drawer: returnDrawer(context),
            body: FutureBuilder(
                future: MyWatchListModel.fetchMyWatchList(),
                builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.data == null) {
                        return const Center(child: CircularProgressIndicator());
                    } 
                    else {
                        if (!snapshot.hasData) {
                            return Column(
                                children: const [
                                    Text(
                                        "Belum ada Watchlist...",
                                        style:
                                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                                    ),
                                    SizedBox(height: 8),
                                ],
                            );
                        } 
                        else {
                            return ListView.builder(
                                itemCount: snapshot.data!.length,
                                itemBuilder: (_, index) => InkWell(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MyDetailPage(
                                                modelWatchList: snapshot.data![index])),
                                    ),
                                    child: Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 12),
                                        padding: const EdgeInsets.all(20.0),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(15.0),
                                            boxShadow: const [
                                                BoxShadow(
                                                    color: Colors.black, blurRadius: 2.0)
                                            ],
                                            border: Border.all(
                                                color:
                                                snapshot.data![index].fields.watched
                                                ? Colors.blueAccent
                                                : Colors.red
                                            )            
                                        ),
                                        child: Row(
                                            children: [
                                                Text(
                                                    "${snapshot.data![index].fields.title}",
                                                    style: const TextStyle(
                                                        fontSize: 18.0,
                                                        fontWeight: FontWeight.bold,
                                                    ),
                                                ),
                                                const Flexible(
                                                    fit: FlexFit.tight, child: SizedBox()
                                                ),
                                                Checkbox(
                                                    value: snapshot.data![index].fields.watched,
                                                    onChanged: (bool? value) {
                                                        setState(() {
                                                            snapshot.data![index].fields.watched = value!;
                                                        });
                                                    }
                                                ),
                                            ],
                                        )
                                    ),
                                )
                            );
                        }
                    }
                }
            )
        );
    }
}