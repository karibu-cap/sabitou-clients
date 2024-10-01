import "package:get/get.dart";


class AppTranslations extends Translations{

  @override

  Map<String, Map<String, String>> get keys => {
    "en_US":{
      "title":"Flutter Demo",
      "message":"This was a great Task"
    },
    "fr_FR":{
      "title":"Démo Flutter",
      "message":"C’était une excellente tâche"
    }
  };
}