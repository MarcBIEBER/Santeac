import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:santeac/icons.dart';
import 'package:santeac/widgets/svg_asset.dart';
import 'package:collection/collection.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool? isHeartIconTapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121421),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              physics: BouncingScrollPhysics(),
              children: [
                SizedBox(
                  height: 66.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28.w),
                  child: Hero(
                  tag: "quiz",
                    child: Material(
                      color: Colors.transparent,
                      child: Text("Chambre parents",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 34.w,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28.w),
                  child: Text(
                    "Prendre soin de soi",
                    style: TextStyle(
                        color: Color(0xffffffff).withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 16.w),
                  ),
                ),
                /* SizedBox(height: 25.h),
                SizedBox(
                  height: 279.w,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width: 28.w),
                      Container(
                        height: 280.w,
                        width: 280.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/pics/pic1.png"),
                          ),
                        ),
                      ),
                      SizedBox(width: 20.w),
                      Container(
                        height: 280.w,
                        width: 280.w,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/pics/pic2.jpg",
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ), */
                /* SizedBox(height: 15.h), */
                /* Padding(
                  padding: EdgeInsets.only(left: 28.w),
                  child: Row(
                    children: [
                      Container(
                        height: 56.w,
                        width: 56.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.1),
                        ),
                        child: Center(
                            child: SvgAsset(
                                assetName: AssetName.headphone,
                                height: 28.w,
                                width: 28.w)),
                      ),
                      SizedBox(width: 16.w),
                      Container(
                        height: 56.w,
                        width: 56.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.1),
                        ),
                        child: Center(
                            child: SvgAsset(
                                assetName: AssetName.tape,
                                height: 28.w,
                                width: 28.w)),
                      ),
                    ],
                  ),
                ), */
                SizedBox(height: 46.h),
                Padding(
                  padding: EdgeInsets.only(left: 28.w, right: 28.w, bottom: 80.h),
                  child: Text(
                    "Il est important de prendre soin de soi\nPour ce faire rien de plus simple, répondre à un simple quiz !",
                    style: TextStyle(
                        color: Color(0xffffffff).withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 16.w),
                  ),
                )
              ],
            ),

            Align(alignment: Alignment.topCenter,
            child:   Container(
              color:  Color(0xff121421),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 22.w,
                  right: 22.w,
                  top: 20.h,
                  bottom: 10.h
                ),
                child: Material(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(360),
                        onTap: onBackIconTapped,
                        child: Container(
                          height: 35.w,
                          width: 35.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(360),
                          ),
                          child: Center(
                            child: SvgAsset(
                              assetName: AssetName.back,
                              height: 20.w,
                              width: 20.w,
                            ),
                          ),
                        ),
                      ),


                      InkWell(
                        borderRadius: BorderRadius.circular(360),
                        onTap: onHeartIconTapped,
                        child: Container(
                          height: 35.w,
                          width: 35.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(360),
                          ),
                          child: Center(
                            child: SvgAsset(
                              assetName: AssetName.heart,
                              height: 24.w,
                              width: 24.w,
                              color: isHeartIconTapped! ? Colors.red: Colors.white,
                            ),
                          ),
                        ),
                      ),




                    ],
                  ),
                ),
              ),
            )
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 87.h,
                decoration: BoxDecoration(
                  color: Colors.black,
                  gradient: LinearGradient(
                    stops: [0,1],
                    colors: [
                      Color(0xff121421),
                      Colors.transparent,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter
                  )
                ),
                child: Center(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: onStartButtonPressed,
                      child: Ink(
                        decoration: BoxDecoration(
                          color: Color(0xff4A80F0),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Container(
                          height: 56.h,
                          width: 319.w,
                          child: Center(child: Text("Démarrer le quiz", style: TextStyle(fontSize: 16.w, fontWeight: FontWeight.bold,color: Colors.white),)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }

  void onStartButtonPressed() {
    Get.to(()=> Question1(), transition: Transition.rightToLeft);
  }


  void onHeartIconTapped() {
    setState(() {
      isHeartIconTapped = !isHeartIconTapped!;
    });
  }
}
  void onBackIconTapped() {
   Get.back();
  }

TextButton _createTextButton(strToPrint, context, nQuestion, int point, int index) {
  return TextButton(
    child: Text(
      strToPrint,
      style: TextStyle(color: Color.fromARGB(255, 216, 120, 65), fontSize: 17.w),
      textAlign: TextAlign.center,
    ),
    onPressed: () {
      Question1._conter.insert(index, point);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => nQuestion),
      );
    },
  );
}

class Question1 extends StatelessWidget {
  const Question1({Key? key}) : super(key: key);
  static var _conter = List.filled(10, 0, growable: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 216, 120, 65),
        title: Text('Santeac'),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Question 1 : J’ai pu rire et prendre les choses du bon côté\n\n\n',
              style: TextStyle(
                        color: Color.fromARGB(255, 82, 82, 82).withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 19.w),
              textAlign: TextAlign.center,
            ),
            _createTextButton('Aussi souvent que d\'habitude', context, const Question2(), 0, 0),
            _createTextButton('Pas tout-à-fait autant', context, const Question2(), 1, 0),
            _createTextButton('Beaucoup moins souvent ces jours-ci', context, const Question2(), 2, 0),
            _createTextButton('Absolument pas', context, const Question2(), 3, 0),

            /* Align(alignment: Alignment.topCenter,
            child:   Container(
              color:  Color(0xff121421),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 22.w,
                  right: 22.w,
                  top: 20.h,
                  bottom: 10.h
                ),
                child: Material(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(360),
                        onTap: onBackIconTapped,
                        child: Container(
                          height: 35.w,
                          width: 35.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(360),
                          ),
                          child: Center(
                            child: SvgAsset(
                              assetName: AssetName.back,
                              height: 20.w,
                              width: 20.w,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ), */
          ],
      ),
    ),
    );
  }

}

class Question2 extends StatelessWidget {
  const Question2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 216, 120, 65),
        title: Text('Santeac'),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Question 2 : Je me suis sentie confiante et joyeuse, en pensant à l’avenir\n\n\n',
              style: TextStyle(
                        color: Color.fromARGB(255, 82, 82, 82).withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 19.w),
              textAlign: TextAlign.center,
            ),
            _createTextButton('Autant que d’habitude', context, const Question3(), 0, 1),
            _createTextButton('Plutôt moins que d’habitude', context, const Question3(), 1, 1),
            _createTextButton('Beaucoup moins que d’habitude', context, const Question3(), 2, 1),
            _createTextButton('Pratiquement pas', context, const Question3(), 3, 1),
          ],
        ),
      ),
    );
  }
}

class Question3 extends StatelessWidget {
  const Question3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 216, 120, 65),
        title: Text('Santeac'),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Question 3 : Je me suis reprochée, sans raison, d’être responsable quand les choses allaient mal\n\n\n',
              style: TextStyle(
                        color: Color.fromARGB(255, 82, 82, 82).withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 19.w),
              textAlign: TextAlign.center,
            ),
            _createTextButton('Oui, la plupart du temps', context, const Question4(), 3, 2),
            _createTextButton('Oui, parfois', context,  const Question4(), 2, 2),
            _createTextButton('Pas très souvent', context,  const Question4(), 1, 2),
            _createTextButton('Non, jamais', context,  const Question4(), 0, 2),
          ],
        ),
      ),
    );
  }
}

class Question4 extends StatelessWidget {
  const Question4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 216, 120, 65),
        title: Text('Santeac'),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Question 4 : Je me suis sentie inquiète ou soucieuse sans motifs\n\n\n',
              style: TextStyle(
                        color: Color.fromARGB(255, 82, 82, 82).withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 19.w),
              textAlign: TextAlign.center,
            ),
            _createTextButton('Non, pas du tout', context, const Question5(), 0, 3),
            _createTextButton('Presque jamais', context, const Question5(), 1, 3),
            _createTextButton('Oui, parfois', context, const Question5(), 2, 3),
            _createTextButton('Oui, très souvent', context, const Question5(), 3, 3),
          ],
        ),
      ),
    );
  }
}

class Question5 extends StatelessWidget {
  const Question5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 216, 120, 65),
        title: Text('Santeac'),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Question 5 : Je me suis sentie effrayée ou paniquée sans raisons\n\n\n',
              style: TextStyle(
                        color: Color.fromARGB(255, 82, 82, 82).withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 19.w),
              textAlign: TextAlign.center,
            ),
            _createTextButton('Oui, vraiment souvent', context, const Question6(), 3, 4),
            _createTextButton('Oui, parfois', context, const Question6(), 2, 4),
            _createTextButton('Non, pas très souvent', context, const Question6(), 1, 4),
            _createTextButton('Non, pas du tout', context, const Question6(), 0, 4),
          ],
        ),
      ),
    );
  }
}

class Question6 extends StatelessWidget {
  const Question6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 216, 120, 65),
        title: Text('Santeac'),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Question 6 : J’ai eu tendance à me sentir dépassée par les événements\n\n\n',
              style: TextStyle(
                        color: Color.fromARGB(255, 82, 82, 82).withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 19.w),
              textAlign: TextAlign.center,
            ),
            _createTextButton('Oui, la plupart du temps, je me suis sentie incapable de faire face aux situations', context, const Question7(), 3, 5),
            _createTextButton('Oui, parfois, je ne me suis pas sentie aussi capable de faire face que d’habitude', context, const Question7(), 2, 5),
            _createTextButton('Non, j’ai pu faire face à la plupart des situations', context, const Question7(), 1, 5),
            _createTextButton('Non, je me suis sentie aussi efficace que d’habitude', context, const Question7(), 0, 5),
          ],
        ),
      ),
    );
  }
}

class Question7 extends StatelessWidget {
  const Question7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 216, 120, 65),
        title: Text('Santeac'),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Question 7 : Je me suis sentie si malheureuse que j’ai eu des problèmes de sommeil\n\n\n',
              style: TextStyle(
                        color: Color.fromARGB(255, 82, 82, 82).withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 19.w),
              textAlign: TextAlign.center,
            ),
            _createTextButton('Oui, la plupart du temps', context, const Question8(), 3, 6),
            _createTextButton('Oui, parfois', context, const Question8(), 2, 6),
            _createTextButton('Pas très souvent', context, const Question8(), 1, 6),
            _createTextButton('Non, pas du tout', context, const Question8(), 0, 6),
          ],
        ),
      ),
    );
  }
}

class Question8 extends StatelessWidget {
  const Question8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 216, 120, 65),
        title: Text('Santeac'),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Question 8 : Je me suis sentie triste ou malheureuse\n\n\n',
              style: TextStyle(
                        color: Color.fromARGB(255, 82, 82, 82).withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 19.w),
              textAlign: TextAlign.center,
            ),
            _createTextButton('Oui la plupart du temps', context, const Question9(), 3, 7),
            _createTextButton('Oui, très souvent', context, const Question9(), 2, 7),
            _createTextButton('Pas très souvent', context, const Question9(), 1, 7),
            _createTextButton('Non, pas du tout', context, const Question9(), 0, 7),
          ],
        ),
      ),
    );
  }
}

class Question9 extends StatelessWidget {
  const Question9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 216, 120, 65),
        title: Text('Santeac'),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Question 9 : Je me suis sentie si malheureuse que j’en ai pleuré\n\n\n',
              style: TextStyle(
                        color: Color.fromARGB(255, 82, 82, 82).withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 19.w),
              textAlign: TextAlign.center,
            ),
            _createTextButton('Oui, la plupart du temps', context, const Question10(), 3, 8),
            _createTextButton('Oui, très souvent', context, const Question10(), 2, 8),
            _createTextButton('Seulement de temps en temps', context, const Question10(), 1, 8),
            _createTextButton('Non, jamais', context, const Question10(), 0, 8),
          ],
        ),
      ),
    );
  }
}

class Question10 extends StatelessWidget {
  const Question10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 216, 120, 65),
        title: Text('Santeac'),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Question 10 : Il m’est arrivée de penser à me faire du mal\n\n\n',
              style: TextStyle(
                        color: Color.fromARGB(255, 82, 82, 82).withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 19.w),
              textAlign: TextAlign.center,
            ),
            _createTextButton('Oui, très souvent', context, const TMP(), 3, 9),
            _createTextButton('Parfois', context, const TMP(), 2, 9),
            _createTextButton('Presque jamais', context, const TMP(), 1, 9),
            _createTextButton('Jamais', context, const TMP(), 0, 9),
          ],
        ),
      ),
    );
  }
}

class TMP extends StatelessWidget {
  const TMP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 216, 120, 65),
        title: Text('Santeac'),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Tu viens de finir le questionnaire ! Acceptes-tu que les résultats soient transmis à ton professionnel de santé reférent ?\n\n\n',
              style: TextStyle(
                        color: Color.fromARGB(255, 82, 82, 82).withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 19.w),
              textAlign: TextAlign.center,
            ),
            _createTextButton('Oui', context, const TMP2(), 11, 0),
            _createTextButton('Non', context, const TMP2(), 11, 0),
          ],
        ),
      ),
    );
  }
}

class TMP2 extends StatelessWidget {
  const TMP2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 216, 120, 65),
        title: Text('Santeac'),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Super Johanna ! Tes résultats ont été transmis\n\n\n',
              style: TextStyle(
                        color: Color.fromARGB(255, 82, 82, 82).withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 19.w),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}