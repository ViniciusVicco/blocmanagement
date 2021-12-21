Stream<int> boatStream() async* {
  for (int i = 1; i <= 10; i++) {
    print("Enviando barco N° $i");
    await Future.delayed(Duration(seconds: 2));
    yield i; // Palavra Reservada Yield, adiciona valor de saída da stream, semelhante a um return contudo não finaliza a função.
  }
}

void main() {
  Stream<int> stream = boatStream();

  stream.listen((event) {
    print("Recebido barco N° $event");
  });
}
