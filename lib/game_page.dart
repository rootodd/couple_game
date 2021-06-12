
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_couple/repository/text_list.dart';

class GamePage extends StatefulWidget{

  final String player_1;
  final String player_2;

  const GamePage({Key key, this.player_1, this.player_2}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState(player_1,player_2);
}

class _GamePageState extends State<GamePage>{

  final String player_1;
  final String player_2;

  _GamePageState(this.player_1, this.player_2);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Couple Game',
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Color(0xFFb70086),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('カップルゲーム'),
          backgroundColor: Color(0xFFb70086),
        ),
        body: Container(
          // 背景のグラデーションを設定
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
              colors: [
                const Color(0xffe4a972).withOpacity(0.6),
                const Color(0xff9941d8).withOpacity(0.6),
              ],
              stops: const [
                0.0,
                1.0,
              ],
            ),
          ),
          child: Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                        this.player_1,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    Text(
                        this.player_2,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    Text(
                        getText(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                        ),
                    ),
                    ElevatedButton(
                        onPressed: (){

                        },
                        child: Text('次のお題へ'),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF930020),
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: Text('ゲームを終了する'),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF930020),
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
            ),
            ),
        ),
      ),
    );
  }
}