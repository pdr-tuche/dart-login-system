class User {
  int _id ;
  String _nome = 'sem nome';
  String _senha = '0';

  User(this._nome, this._senha, [this._id = 0]);

  int get id => this._id;

  String get nome => this._nome;
  set nome(String value) => _nome = value;

  String get senha => this._senha;
  set senha(String value)=> _senha = value;
  
  @override
  String toString()=> '{id: ${this._id} | nome: ${this._nome} | senha: ${this._senha}}';
}

bool verificarIdExistente(User user, List users){
  for (var elem in users) {
    if(elem._id == user._id){
      return true;
    }
  }
  return false;
}

int gerarId(List users){
  int maior =0;
  for (var elem in users) {
    if(elem._id > maior){
      maior = elem._id;
    }
  }
  return maior+1;
}