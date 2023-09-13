import 'lib/user.dart';
import 'dart:io';

var users = [];
int main(List<String> args) {
  String voltar;
  do{
    int opcao = menu();
    switch(opcao){
      case 1:
        criarUser();
      case 2:
        users.isEmpty == true ? print('lista vazia') : print(users);
      default:
        return 0;
    }
    print('deseja voltar para o menu?[S][N]');
    voltar = stdin.readLineSync()!.toUpperCase();
    if(Platform.isWindows)
      print(Process.runSync("cls", [], runInShell: true).stdout);
    else
      print(Process.runSync('clear', [],runInShell: true).stdout);
    
  }while(voltar != 'N');
  return 0;
}

int menu() {
  print('[1] para adicionar um novo registro\n[2] para mostrar os registros\n[0] para sair');
  return int.parse(stdin.readLineSync()!);
}


void criarUser(){
  print('digite seu username: ');
  String username = stdin.readLineSync()!;
  print('digite a senha: ');
  String password = stdin.readLineSync()!;
  User user = User(username, password, gerarId(users));
  users.add(user);
}