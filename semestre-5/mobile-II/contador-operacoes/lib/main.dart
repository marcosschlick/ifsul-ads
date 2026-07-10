import 'package:flutter/material.dart';

// =============================================================================
// PONTO DE ENTRADA DO APP
// =============================================================================
// Todo app Flutter começa aqui. main() é a função que o sistema chama ao abrir
// o app. runApp() "liga" o Flutter e mostra o primeiro widget na tela (MyApp).
void main() {
  runApp(const MyApp());
}

// =============================================================================
// WIDGET RAIZ: MyApp (StatelessWidget)
// =============================================================================
// StatelessWidget = widget SEM estado. Só descreve a tela uma vez; se precisar
// mudar algo (ex.: um contador), usamos StatefulWidget em outra parte.
// Aqui só configuramos o app: tema, título e qual tela abrir primeiro (home).
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.blue)),
      // home = primeira tela que o usuário vê ao abrir o app
      home: const MyHomePage(title: 'Counter Atividade 1'),
    );
  }
}

// =============================================================================
// TELA PRINCIPAL: MyHomePage (StatefulWidget)
// =============================================================================
// StatefulWidget = widget COM estado. Precisamos disso quando algo na tela
// muda (ex.: o número do contador). Ele é dividido em duas classes:
// 1) O widget em si (MyHomePage) — guarda dados "fixos", como o título.
// 2) O State (_MyHomePageState) — guarda os dados que MUDAM e o método build.
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// =============================================================================
// ESTADO DA TELA: _MyHomePageState
// =============================================================================
// Aqui ficam as variáveis que mudam (ex.: _counter) e as funções que alteram
// esse estado. Toda vez que chamamos setState(), o Flutter redesenha a tela.
class _MyHomePageState extends State<MyHomePage> {
  // Variável que guarda o valor do contador. O "_" no nome indica que é
  // privada a este arquivo (convenção Dart).
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _multiplyCounter() {
    setState(() {
      _counter *= 2;
    });
  }

  void _divideCounter() {
    setState(() {
      _counter ~/= 2; // ~/ = divisão inteira (sem casas decimais)
    });
  }

  // ===========================================================================
  // MÉTODO build — DESCREVE O LAYOUT DA TELA
  // ===========================================================================
  // O Flutter chama build() para "montar" a árvore de widgets. Tudo que
  // aparece na tela vem daqui: Scaffold = estrutura (appBar, body, FABs).
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra superior: título e cor de fundo (usa a cor do tema)
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      // Corpo da tela: Centraliza uma Column (coluna) com texto e o contador
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('Você pressionou o botão este número de vezes:'),
            // O valor do contador; cor dinâmica: azul se >= 0, vermelho se < 0
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: _counter < 0 ? Colors.red : Colors.blue,
              ),
            ),
          ],
        ),
      ),
      // Botões flutuantes no canto: um Row com duas Column (dois "cubinhos")
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Primeira coluna: botões de + e -
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
              SizedBox(height: 10),
              FloatingActionButton(
                onPressed: _decrementCounter,
                tooltip: 'Decrement',
                backgroundColor: Colors.red[100],
                child: const Icon(Icons.remove),
              ),
            ],
          ),
          SizedBox(width: 10),
          // Segunda coluna: botões de x e ÷
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FloatingActionButton(
                onPressed: _multiplyCounter,
                tooltip: 'Multiply',
                backgroundColor: Colors.green[100],
                child: const Icon(
                  Icons.close
                ),
              ),
              SizedBox(height: 10),
              FloatingActionButton(
                onPressed: _divideCounter,
                tooltip: 'Divide',
                backgroundColor: Colors.yellow[100],
                child: const Icon(
                  Icons.percent
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
