import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
class Money {
  String? image;
  String? name;
  String? time;
  String? fee;
  bool? buy;
}
@HiveType(typeId:1)
class AddData extends HiveObject{
  @HiveField(0)
  String name;
  @HiveField(1)

  String explain;
  @HiveField(2)

  String amount;
  @HiveField(3)

  String IN;
  @HiveField(4)

  DateTime datetime;
 AddData(this.name,this.explain,this.IN,this.amount,this.datetime);

}
