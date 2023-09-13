import 'lib/user.dart';
import 'dart:io';

var users = [];
void main(List<String> args) {
  String voltar;
  do{
    print('[1] para adicionar um novo registro\n[2] para mostrar os registros\n[0] para sair');
    int opcao = int.parse(stdin.readLineSync()!);
    switch(opcao){
      case 1:
        print('digite seu username: ');
        String username = stdin.readLineSync()!;
        print('digite a senha: ');
        String password = stdin.readLineSync()!;

        User user = User(username, password, gerarId(users));
        users.add(user);
      case 2:
        users.isEmpty == true ? print('lista vazia') : print(users);
      default:
        break;
    }
    print('deseja voltar para o menu?[S][N]');
    voltar = stdin.readLineSync()!.toUpperCase();
  }while(voltar != 'N');
}