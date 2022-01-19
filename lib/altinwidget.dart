import 'package:dovizvealtinkurlari/model/currencymodel.dart';
import 'package:dovizvealtinkurlari/service/currencyservice.dart';
import 'package:flutter/material.dart';

class AltinWidget extends StatelessWidget {
  const AltinWidget({
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
                                  left: 15, right: 10, bottom: 10, top: 10),
                              child: Text(
                                'İsim',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 55, right: 0, bottom: 10, top: 10),
                              child: Text(
                                'Alış',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 30, right: 30, bottom: 10, top: 10),
                              child: Text(
                                'Satış',
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
                                  left: 10, right: 10, bottom: 20, top: 20),
                              child: Text(
                                'Gram Altın',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 50, right: 0, bottom: 20, top: 20),
                              child: Text(
                                currency.data!.gramAltin!.al!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 30, right: 10, bottom: 20, top: 20),
                              child: Text(
                                currency.data!.gramAltin!.sat!,
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
                                  left: 10, right: 0, bottom: 20, top: 20),
                              child: Text(
                                'Çeyrek Altın',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 50, right: 0, bottom: 20, top: 20),
                              child: Text(
                                currency.data!.ceyrekAltin!.al!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 30, right: 10, bottom: 20, top: 20),
                              child: Text(
                                currency.data!.ceyrekAltin!.sat!,
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
                                  left: 10, right: 10, bottom: 20, top: 20),
                              child: Text(
                                'Yarım Altın',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 50, right: 0, bottom: 20, top: 20),
                              child: Text(
                                currency.data!.yarimAltin!.al!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 30, right: 10, bottom: 20, top: 20),
                              child: Text(
                                currency.data!.yarimAltin!.sat!,
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
                                  left: 10, right: 10, bottom: 20, top: 20),
                              child: Text(
                                'Tam Altın',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 50, right: 0, bottom: 20, top: 20),
                              child: Text(
                                currency.data!.tamAltin!.al!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 30, right: 10, bottom: 20, top: 20),
                              child: Text(
                                currency.data!.tamAltin!.sat!,
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
                                  left: 10, right: 0, bottom: 20, top: 20),
                              child: Text(
                                'Cumhuriyet Altını',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 50, right: 0, bottom: 20, top: 20),
                              child: Text(
                                currency.data!.cumhuriyetAltini!.al!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 30, right: 10, bottom: 20, top: 20),
                              child: Text(
                                currency.data!.cumhuriyetAltini!.sat!,
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
                                  left: 10, right: 0, bottom: 20, top: 20),
                              child: Text(
                                'Ata Altın',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 50, right: 0, bottom: 20, top: 20),
                              child: Text(
                                currency.data!.ataAltin!.al!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 30, right: 10, bottom: 20, top: 20),
                              child: Text(
                                currency.data!.ataAltin!.sat!,
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
                                  left: 10, right: 10, bottom: 20, top: 20),
                              child: Text(
                                '14 Ayar Altın',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 50, right: 0, bottom: 20, top: 20),
                              child: Text(
                                currency.data!.u14AyarAltin!.al!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 30, right: 10, bottom: 20, top: 20),
                              child: Text(
                                currency.data!.u14AyarAltin!.sat!,
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
                                  left: 10, right: 10, bottom: 20, top: 20),
                              child: Text(
                                '18 Ayar Altın',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 50, right: 0, bottom: 20, top: 20),
                              child: Text(
                                currency.data!.u18AyarAltin!.al!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 30, right: 10, bottom: 20, top: 20),
                              child: Text(
                                currency.data!.u18AyarAltin!.sat!,
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
                                  left: 10, right: 10, bottom: 20, top: 20),
                              child: Text(
                                '22 Ayar Bilezik',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 50, right: 0, bottom: 20, top: 20),
                              child: Text(
                                currency.data!.u22AyarBilezik!.al!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 30, right: 10, bottom: 20, top: 20),
                              child: Text(
                                currency.data!.u22AyarBilezik!.sat!,
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
                                  left: 10, right: 10, bottom: 20, top: 20),
                              child: Text(
                                'Gümüş',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 50, right: 0, bottom: 20, top: 20),
                              child: Text(
                                currency.data!.gumus!.al!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                            TableCell(
                                child: Container(
                              padding: EdgeInsets.only(
                                  left: 30, right: 10, bottom: 20, top: 20),
                              child: Text(
                                currency.data!.gumus!.sat!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )),
                          ])
                    ],
                  ),
                ],
              ),
            ]);
          }
        },
      ),
    );
  }
}
