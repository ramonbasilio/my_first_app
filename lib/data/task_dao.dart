import 'package:my_first_app/Components/tasks.dart';
import 'package:my_first_app/data/database.dart';
import 'package:sqflite/sqflite.dart';

class TaskDao {
  static const String tableSql = 'CREATE TABLE $_tablename('
      '$_name TEXT, '
      '$_difficulty INTEGER'
      '$_image TEXT)';

  static const String _tablename = 'taskTable';
  static const String _name = 'name';
  static const String _difficulty = 'difficulty';
  static const String _image = 'image';

  save(Task tarefa) async {}

  Future<List<Task>> findAll() async {
    print('Acessando o findAll');

    final Database bancoDeDados = await getDataBase();
    //chamando a função getDataBase() que retornará a tabela no path indicado

    final List<Map<String, dynamic>> result =
        await bancoDeDados.query(_tablename);
    // a variavel result vai receber um mapa (dicionario) com as chaves e valores referentes ao tabela indicada no
    // variavel bancoDeDados.

    print('Procurando dados no banco de dados... encontrado: $result');

    return toList(result);
  }

  List<Task> toList(List<Map<String, dynamic>> mapaDeTarefas) {
    print('Convertendo to List...');
    final List<Task> tarefas = []; //lista que vai receber os dados
    for (Map<String, dynamic> linha in mapaDeTarefas) {
      final Task tarefaItem = Task(linha[_name], linha[_image], linha[_difficulty]);
      tarefas.add(tarefaItem);
    }
    return tarefas;
  }

  Future<List<Task>> find(String nomeDaTarefa) async {}

  Future<List<Task>> delete(String nomeDaTarefa) async {}
}
