import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http_interceptor/http/intercepted_client.dart';
import 'package:poke_app/models/pokemon.dart';
import 'api_interceptor.dart';

class PokemonApi {
  Client client = InterceptedClient.build(
    interceptors: [ApiInterceptor()],
    requestTimeout: const Duration(seconds: 5),
  );

  Future<List<PokemonModel>> getTransactions(BuildContext context) async {
    //faz a REQUEST dos dados atraves do GET
    try {
      //precisa passar a URI do ENDPOINT
      //pode se passar HEADERS tambem igualmente ao POST
      //  NAO POSSUI BODY
      final response =
          await client.get(Uri.parse("http://192.168.15.26:8080/transactions"))
              //capturamos os erros que tiverem dentro dessa FUTURE
              .catchError((e) {
        //se tiver habilitado o Crashlytics ele vai rodar o CODIGO.
        if (FirebaseCrashlytics.instance.isCrashlyticsCollectionEnabled) {
          FirebaseCrashlytics.instance.setCustomKey("EXPECTION", e.toString());
          FirebaseCrashlytics.instance
              .setCustomKey("HTTP_STATUSCODE", e.statusCode);
          FirebaseCrashlytics.instance.setCustomKey("HTTP_BODY", "METHOD_GET");
          FirebaseCrashlytics.instance.recordError(e, null);
        }

        //aqui fazemos algo quando capturamos o erro
        //nesse caso mandamos uma mensagem de erro na tela
        alerts.errorAlert(context, e.message);
      });

      //cria uma lista de MAP da resposta do GET
      //map e igualmente um JSON de CHAVE VALOR 0
      final List<Map<String, dynamic>> decodedJson = jsonDecode(response.body);

      //lista de TRANSASCTIONS
      List<TransactionModel> listTransactions = <TransactionModel>[];

      //para cada ITEM do MAP que foi criada apartir do JSON
      for (Map<String, dynamic> transactionJson in decodedJson) {
        //pega o contact dentro do JSON por meio da KEY dele dentro do dado que
        //esta rodando o MAP
        final Map<String, dynamic> contactJson = transactionJson['contact'];

        //cria uma nova transaction a partir do MAP atual
        //pegando os valores por KEY/CHAVE
        final TransactionModel transaction = TransactionModel(
          value: transactionJson['value'],
          contact: ContactModel(
            id: 0,
            name: contactJson['name'],
            accountNumber: contactJson['accountNumber'],
            age: 0,
            telephone: "",
          ),
        );
        //adiciona na lista de transactions
        listTransactions.add(transaction);
      }
      //adiciona no NOTIFIER
      return listTransactions;
    } catch (e) {
      final list = <TransactionModel>[];
      return list;
    }
  }
}
