import 'package:dovizvealtinkurlari/altinwidget.dart';
import 'package:dovizvealtinkurlari/dolarwidget.dart';
import 'package:dovizvealtinkurlari/service/currencyservice.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late CurrencyService currencyService;

  @override
  void initState() {
    super.initState();
    currencyService = CurrencyService();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                child: DrawerHeader(
                  child: Center(
                      child: Text(
                    "Döviz Kurları",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
                ),
                color: Colors.green,
                width: MediaQuery.of(context).size.width,
              )
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.green,
          actions: [
            Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width / 12),
              child: Icon(Icons.search),
            )
          ],
          bottom: TabBar(indicatorColor: Colors.white, tabs: [
            Tab(
              child: Text("Dolar"),
            ),
            Tab(
              child: Text("Altın"),
            ),
          ]),
          title: Text("Döviz Kurları"),
        ),
        body: TabBarView(children: [
          DolarWidget(currencyService: currencyService),
          AltinWidget(currencyService: currencyService),
        ]),
      ),
    );
  }
}
