import 'dart:math';

import 'package:collection/collection.dart';

import 'trader.dart';
import 'transaction.dart';

void main() {
  final transactions = [
    Transaction(Trader("Brian", "Cambridge"), 2011, 300),
    Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
    Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
    Transaction(Trader("Mario", "Milan"), 2012, 710),
    Transaction(Trader("Mario", "Milan"), 2012, 700),
    Transaction(Trader("Alan", "Cambridge"), 2012, 950),
  ];

  // 1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오
  final nameListWithAscendingValue =
      transactions
          .where((element) => element.year == 2011)
          .sorted((a, b) => a.value.compareTo(b.value))
          .map((e) => e.trader.name)
          .toList();

  print(nameListWithAscendingValue);

  // 2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오
  final cities = transactions.map((e) => e.trader.city).toSet();
  print(cities);

  // 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오
  final tradersInCambridge = transactions
      .where((element) => element.trader.city == 'Cambridge')
      .map((e) => e.trader.name)
      .toSet()
      .toList()
      .sorted((a, b) => a.compareTo(b));

  print(tradersInCambridge);

  // 4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오
  final traders = transactions
      .map((e) => e.trader.name)
      .toSet()
      .toList()
      .sorted((a, b) => a.compareTo(b));

  print(traders);

  // 5. 밀라노에 거래자가 있는가?
  final isTraderInMilan = transactions.any(
    (element) => element.trader.city == 'Milan',
  );
  print(isTraderInMilan);

  // 6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오
  final valueInCambridge = transactions
      .where((element) => element.trader.city == 'Cambridge')
      .map((e) => e.value);
  print(valueInCambridge);

  // 7. 전체 트랜잭션 중 최대값은 얼마인가?
  final maxValueInTransactions = transactions
      .map((e) => e.value)
      .reduce((value, element) => max(value, element));

  print(maxValueInTransactions);

  // 8. 전체 트랜잭션 중 최소값은 얼마인가?
  final minValueInTransactions = transactions
      .map((e) => e.value)
      .reduce((value, element) => min(value, element));

  print(minValueInTransactions);

}





