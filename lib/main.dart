import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.logout), 
            onPressed: () {  },
          )
        ],
        leading: IconButton(
            icon: Icon(Icons.close), 
            onPressed: () {  },
          )
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 110,
                height: 110,
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(38),
                    ),
                    shadows: [
                        BoxShadow(
                            color: Color(0x7A1D1D25),
                            blurRadius: 24,
                            offset: Offset(0, 16),
                            spreadRadius: -16,
                        )
                    ],
                ),
                child: Image.asset("lib/images/avatar.png"),
            ),
            SizedBox(height: 30,),
            Text(
              'Екатерина',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w700,
                  height: 0.06,
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: double.infinity,
              child: TabBar(
                  controller: _tabController,
                  tabs: <Widget>[
                    Tab(
                      child: Text(
                        'Профиль',
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Настройки',
                      ),
                    ),
                  ],
                ),
            ),
            Container(
              height: 400,
              child: TabBarView(
                controller: _tabController,
                children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("У вас подключено"),
                        Text("Подписки, автоплатежи и сервисы на которые вы подписались"),
                      ],
                    ),
                    Center(
                      child: CircularProgressIndicator(),
                    )
                ]
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
