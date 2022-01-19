import 'package:dovizvealtinkurlari/model/currencymodel.dart';
import 'package:dovizvealtinkurlari/service/currencyservice.dart';
import 'package:flutter/material.dart';

class DolarWidget extends StatelessWidget {
  const DolarWidget({
    Key? key,
    required this.currencyService,
  }) : super(key: key);
  final CurrencyService currencyService;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: currencyService.getCurrency(),
        builder: (context, AsyncSnapshot<Currency> currency) {
          if (!currency.hasData) {
            return Center(child: CircularProgressIndicator());
          } else {
            return ListView(children: [
              Column(
                children: [
                  Table(
                    children: [
                      TableRow(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                  bottom:
                                      BorderSide(color: Colors.grey.shade400))),
                          children: [
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 10, top: 10),
                              child: Text('İsim',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black)),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 55, right: 0, bottom: 10, top: 10),
                              child: Text('Alış',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black)),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 30, right: 30, bottom: 10, top: 10),
                              child: Text('Satış',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black)),
                            )),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              border: Border(
                                  bottom:
                                      BorderSide(color: Colors.grey.shade400))),
                          children: [
                            TableCell(
                                child: Container(
                                    padding: EdgeInsets.only(
                                        left: 0,
                                        right: 10,
                                        bottom: 10,
                                        top: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              child: Text(
                                                "USD",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.black),
                                              ),
                                              padding: EdgeInsets.only(
                                                  left: 10, top: 4),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              child: Text(
                                                "ABD Doları",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.lightBlue),
                                              ),
                                              padding: EdgeInsets.only(
                                                  left: 8, top: 2),
                                            )
                                          ],
                                        ),
                                      ],
                                    ))),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 50, right: 0, bottom: 15, top: 15),
                              child: Text(
                                currency.data!.uSD!.al!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 30, right: 10, bottom: 10, top: 15),
                              child: Text(
                                currency.data!.uSD!.sat!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              border: Border(
                                  bottom:
                                      BorderSide(color: Colors.grey.shade400))),
                          children: [
                            TableCell(
                                child: Container(
                                    padding: EdgeInsets.only(
                                        left: 0,
                                        right: 10,
                                        bottom: 10,
                                        top: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              child: Text(
                                                "AUD",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.black),
                                              ),
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              child: Text(
                                                "Avustralya Doları",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.lightBlue),
                                              ),
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                            )
                                          ],
                                        ),
                                      ],
                                    ))),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 50, right: 0, bottom: 10, top: 15),
                              child: Text(
                                currency.data!.aUD!.al!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 30, right: 10, bottom: 10, top: 15),
                              child: Text(
                                currency.data!.aUD!.sat!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              border: Border(
                                  bottom:
                                      BorderSide(color: Colors.grey.shade400))),
                          children: [
                            TableCell(
                                child: Container(
                                    padding: EdgeInsets.only(
                                        left: 0,
                                        right: 10,
                                        bottom: 10,
                                        top: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              child: Text(
                                                "DKK",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.black),
                                              ),
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              child: Text(
                                                "Danimarka Kronu",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.lightBlue),
                                              ),
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                            )
                                          ],
                                        ),
                                      ],
                                    ))),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 50, right: 0, bottom: 10, top: 15),
                              child: Text(
                                currency.data!.dKK!.al!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 30, right: 10, bottom: 10, top: 15),
                              child: Text(
                                currency.data!.dKK!.sat!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                  bottom:
                                      BorderSide(color: Colors.grey.shade400))),
                          children: [
                            TableCell(
                                child: Container(
                                    padding: EdgeInsets.only(
                                        left: 0,
                                        right: 10,
                                        bottom: 10,
                                        top: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              child: Text(
                                                "EUR",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.black),
                                              ),
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              child: Text(
                                                "Euro",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.lightBlue),
                                              ),
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                            )
                                          ],
                                        ),
                                      ],
                                    ))),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 50, right: 0, bottom: 10, top: 15),
                              child: Text(
                                currency.data!.eUR!.al!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 30, right: 10, bottom: 10, top: 15),
                              child: Text(
                                currency.data!.eUR!.sat!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              border: Border(
                                  bottom:
                                      BorderSide(color: Colors.grey.shade400))),
                          children: [
                            TableCell(
                                child: Container(
                                    padding: EdgeInsets.only(
                                        left: 0,
                                        right: 10,
                                        bottom: 10,
                                        top: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              child: Text(
                                                "GBP",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.black),
                                              ),
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              child: Text(
                                                "İngiliz Sterlini",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.lightBlue),
                                              ),
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                            )
                                          ],
                                        ),
                                      ],
                                    ))),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 50, right: 0, bottom: 10, top: 15),
                              child: Text(
                                currency.data!.gBP!.al!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 30, right: 10, bottom: 10, top: 15),
                              child: Text(
                                currency.data!.gBP!.sat!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              border: Border(
                                  bottom:
                                      BorderSide(color: Colors.grey.shade400))),
                          children: [
                            TableCell(
                                child: Container(
                                    padding: EdgeInsets.only(
                                        left: 0,
                                        right: 10,
                                        bottom: 10,
                                        top: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              child: Text(
                                                "CHF",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.black),
                                              ),
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              child: Text(
                                                "İsviçre Frangı",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.lightBlue),
                                              ),
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                            )
                                          ],
                                        ),
                                      ],
                                    ))),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 50, right: 0, bottom: 10, top: 15),
                              child: Text(
                                currency.data!.cHF!.al!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 30, right: 10, bottom: 10, top: 15),
                              child: Text(
                                currency.data!.cHF!.sat!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              border: Border(
                                  bottom:
                                      BorderSide(color: Colors.grey.shade400))),
                          children: [
                            TableCell(
                                child: Container(
                                    padding: EdgeInsets.only(
                                        left: 0,
                                        right: 10,
                                        bottom: 10,
                                        top: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              child: Text(
                                                "SEK",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.black),
                                              ),
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              child: Text(
                                                "İsveç Kronu",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.lightBlue),
                                              ),
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                            )
                                          ],
                                        ),
                                      ],
                                    ))),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 50, right: 0, bottom: 10, top: 15),
                              child: Text(
                                currency.data!.sEK!.al!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 30, right: 10, bottom: 10, top: 15),
                              child: Text(
                                currency.data!.sEK!.sat!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              border: Border(
                                  bottom:
                                      BorderSide(color: Colors.grey.shade400))),
                          children: [
                            TableCell(
                                child: Container(
                                    padding: EdgeInsets.only(
                                        left: 0,
                                        right: 10,
                                        bottom: 10,
                                        top: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              child: Text(
                                                "CAD",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.black),
                                              ),
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              child: Text(
                                                "Kanada Doları",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.lightBlue),
                                              ),
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                            )
                                          ],
                                        ),
                                      ],
                                    ))),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 50, right: 0, bottom: 10, top: 15),
                              child: Text(
                                currency.data!.cAD!.al!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 30, right: 10, bottom: 10, top: 15),
                              child: Text(
                                currency.data!.cAD!.sat!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              border: Border(
                                  bottom:
                                      BorderSide(color: Colors.grey.shade400))),
                          children: [
                            TableCell(
                                child: Container(
                                    padding: EdgeInsets.only(
                                        left: 0,
                                        right: 10,
                                        bottom: 10,
                                        top: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              child: Text(
                                                "KWD",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.black),
                                              ),
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              child: Text(
                                                "Kuveyt Dinarı",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.lightBlue),
                                              ),
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                            )
                                          ],
                                        ),
                                      ],
                                    ))),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 50, right: 0, bottom: 10, top: 15),
                              child: Text(
                                currency.data!.kWD!.al!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 30, right: 10, bottom: 10, top: 15),
                              child: Text(
                                currency.data!.kWD!.sat!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              border: Border(
                                  bottom:
                                      BorderSide(color: Colors.grey.shade400))),
                          children: [
                            TableCell(
                                child: Container(
                                    padding: EdgeInsets.only(
                                        left: 0,
                                        right: 10,
                                        bottom: 10,
                                        top: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              child: Text(
                                                "NOK",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.black),
                                              ),
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              child: Text(
                                                "Norveç Kronu",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.lightBlue),
                                              ),
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                            )
                                          ],
                                        ),
                                      ],
                                    ))),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 50, right: 0, bottom: 10, top: 15),
                              child: Text(
                                currency.data!.kWD!.al!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 30, right: 10, bottom: 10, top: 15),
                              child: Text(
                                currency.data!.kWD!.sat!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                          ]),
                    ],
                  ),
                ],
              )
            ]);
          }
        },
      ),
    );
  }
}
