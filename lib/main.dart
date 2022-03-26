import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextButton',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

TextButton _createTextButton(strToPrint, context, nQuestion) {
  return TextButton(
    child: Text(
      strToPrint,
    ),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => nQuestion),
      );
    },
  );
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String txt = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Santeac'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Question 1: J’ai pu rire et prendre les choses du bon côté\n\n\n',
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
            _createTextButton('Aussi souvent que d\'habitude', context, const Question2()),
            _createTextButton('Pas tout-à-fait autant', context, const Question2()),
            _createTextButton('Beaucoup moins souvent ces jours-ci', context, const Question2()),
            _createTextButton('Absolument pas', context, const Question2()),
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
        title: Text('Santeac'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Question 2: Je me suis sentie confiante et joyeuse, en pensant à l’avenir\n\n\n',
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
            _createTextButton('Autant que d’habitude', context, const Question3()),
            _createTextButton('Plutôt moins que d’habitude', context, const Question3()),
            _createTextButton('Beaucoup moins que d’habitude', context, const Question3()),
            _createTextButton('Pratiquement pas', context, const Question3()),
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
        title: Text('Santeac'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Question 3: Je me suis reprochée, sans raison, d’être responsable quand les choses allaient mal\n\n\n',
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
            _createTextButton('Oui, la plupart du temps', context, const Question4()),
            _createTextButton('Oui, parfois', context,  const Question4()),
            _createTextButton('Pas très souvent', context,  const Question4()),
            _createTextButton('Non, jamais', context,  const Question4()),
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
        title: Text('Santeac'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Question 4: Je me suis sentie inquiète ou soucieuse sans motifs\n\n\n',
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
            _createTextButton('Non, pas du tout', context, const Question5()),
            _createTextButton('Presque jamais', context, const Question5()),
            _createTextButton('Oui, parfois', context, const Question5()),
            _createTextButton('Oui, très souvent', context, const Question5()),
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
        title: Text('Santeac'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Question 5: Je me suis sentie effrayée ou paniquée sans raisons\n\n\n',
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
            _createTextButton('Oui, vraiment souvent', context, const Question6()),
            _createTextButton('Oui, parfois', context, const Question6()),
            _createTextButton('Non, pas très souvent', context, const Question6()),
            _createTextButton('Non, pas du tout', context, const Question6()),
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
        title: Text('Santeac'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Question 6: J’ai eu tendance à me sentir dépassée par les événements\n\n\n',
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
            _createTextButton('Oui, la plupart du temps, je me suis sentie incapable de faire face aux situations', context, const Question7()),
            _createTextButton('Oui, parfois, je ne me suis pas sentie aussi capable de faire face que d’habitude', context, const Question7()),
            _createTextButton('Non, j’ai pu faire face à la plupart des situations', context, const Question7()),
            _createTextButton('Non, je me suis sentie aussi efficace que d’habitude', context, const Question7()),
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
        title: Text('Santeac'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Question 7: Je me suis sentie si malheureuse que j’ai eu des problèmes de sommeil\n\n\n',
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
            _createTextButton('Oui, la plupart du temps', context, const Question8()),
            _createTextButton('Oui, parfois', context, const Question8()),
            _createTextButton('Pas très souvent', context, const Question8()),
            _createTextButton('Non, pas du tout', context, const Question8()),
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
        title: Text('Santeac'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Question 8: Je me suis sentie triste ou malheureuse\n\n\n',
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
            _createTextButton('Oui la plupart du temps', context, const Question9()),
            _createTextButton('Oui, très souvent', context, const Question9()),
            _createTextButton('Pas très souvent', context, const Question9()),
            _createTextButton('Non, pas du tout', context, const Question9()),
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
        title: Text('Santeac'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Question 9: Je me suis sentie si malheureuse que j’en ai pleuré\n\n\n',
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
            _createTextButton('Oui, la plupart du temps', context, const Question10()),
            _createTextButton('Oui, très souvent', context, const Question10()),
            _createTextButton('Seulement de temps en temps', context, const Question10()),
            _createTextButton('Non, jamais', context, const Question10()),
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
        title: Text('Santeac'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Question 10: Il m’est arrivée de penser à me faire du mal\n\n\n',
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
            _createTextButton('Oui, très souvent', context, Null),
            _createTextButton('Parfois', context, Null),
            _createTextButton('Presque jamais', context, Null),
            _createTextButton('Jamais', context, Null),
          ],
        ),
      ),
    );
  }
}