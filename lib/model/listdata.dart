import 'package:finologyapp/model/money.dart';
import 'package:hive/hive.dart';

List<Money> geter_top() {
  Money snap_food = Money();
  snap_food.name = 'Upwork';
  snap_food.fee = '\$650';
  snap_food.time = 'Jan,30,2022';
  snap_food.image = 'up.png';
  snap_food.buy = true;
  Money snap = Money();
  snap.name = 'Star_buck';
  snap.fee = '\$15';
  snap.time = 'Dec,25,2023';
  snap.image = 'buck.png';
  snap.buy = false;
  Money transfer = Money();
  transfer.name = 'Transfer';
  transfer.fee = '\$100';
  transfer.time = 'Jan,20,2024';
  transfer.image = 'trans.png';
  transfer.buy = false;
  return [
    snap_food,
    snap,
    transfer,
    snap_food,
    snap,
    transfer,
    snap_food,
    snap,
    transfer
  ];
 
}
