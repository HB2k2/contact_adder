import 'package:mobx/mobx.dart';
import 'main.dart';

part 'updater.g.dart';

class StringUpdater = Updater with _$StringUpdater;

abstract class Updater with Store{
  @observable
  String name = "";
  

  @observable
  String email = "";


  @action
  void addName(){
    names.add(name);
  }

  @action
  void addEmail(){
    emails.add(email);
  }
  
}
