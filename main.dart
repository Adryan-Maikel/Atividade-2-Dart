import "dart:io";
void main(){
  choose();
}

choose(){
  print("***********************************");
  print("Escolha uma das atividades abaixo:");
  print("1- Valores aceitos ou não aceitos");
  print("2- Aluno aprovado ou não");
  print("3- ");
  print("4- ");
  int choise = int.parse(stdin.readLineSync()!);
  if(choise == 1){
    acceptedValues();
  }else if(choise == 2){
    approvedStudents();
  }else if(choise == 3){
    
  }else if(choise == 4){

  }else{
    print("Escolha inválida, tente novamente...\n");
    choose();
  }
}

chooseAgain(){
  print("***********************************");
  print("Deseja escolher outra atividade?");
  print("S - sim / N - não");
  String? choiseAgain = stdin.readLineSync().toString().toLowerCase();
  if(choiseAgain == "s"){
    choose();
  }
  return;
}

acceptedValues(){
  print("Me informe 4 números...");
  print("Digite o primeiro número:");
  int numberOne = int.parse(stdin.readLineSync()!);
  print("Digite o segundo número:");
  int numberTwo = int.parse(stdin.readLineSync()!);
  print("Digite o terceiro número:");
  int numberThree = int.parse(stdin.readLineSync()!);
  print("Digite o quarto número:");
  int numberFour = int.parse(stdin.readLineSync()!);

  if(numberTwo > numberThree
  && numberFour > numberOne
  && numberThree + numberFour > numberOne + numberTwo
  && numberThree > 0
  && numberFour > 0
  && numberOne % 2 == 0){
    print("Valores aceitos!");
  }else{
    print("Valores não aceitos.");
  }
  chooseAgain();
}

approvedStudents(){
  print("Me informe as 4 notas do aluno...");
  print("Digite a primeira nota:");
  double gradeOne = double.parse(stdin.readLineSync()!);
  print("Digite a segunda nota:");
  double gradeTwo = double.parse(stdin.readLineSync()!);
  print("Digite a terceira nota:");
  double gradeThree = double.parse(stdin.readLineSync()!);
  print("Digite a quarta nota:");
  double gradeFour = double.parse(stdin.readLineSync()!);
  double studentAverage = (gradeOne + gradeTwo + gradeThree + gradeFour)/4;
  print("Média do aluno é ${studentAverage.toStringAsFixed(1)}");

  if(studentAverage >= 7.0){
    print("Parabéns!\nAluno aprovado!");
  }else if(studentAverage < 5.0){
    print("Que pena!\nAluno reprovado!");
  }else{
    print("Aluno em exame...\nDigite a nota do exame:");
    double recoveryNote = double.parse(stdin.readLineSync()!);
    print("Nota do exame: ${recoveryNote.toStringAsFixed(1)}");
    double finalAverage = (studentAverage + recoveryNote)/2;
    if(finalAverage >= 5.0){
      print("Parabéns!\nAluno aprovado!");
    }else{
      print("Que pena!\nAluno reprovado!");
    }
    print("Média final: ${finalAverage.toStringAsFixed(1)}");
  }
  chooseAgain();
}

