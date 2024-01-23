import 'dart:math';

/// Util Class
class Utils {
  static List<T> shuffleList<T>(List<T> inputList) {
    List<T> resultList = List.from(inputList);
    Random random = Random();

    for (int i = resultList.length - 1; i > 0; i--) {
      int j = random.nextInt(i + 1);
      T temp = resultList[i];
      resultList[i] = resultList[j];
      resultList[j] = temp;
    }

    return resultList;
  }
}

void main() {
  List<int> myNumbers = [1, 2, 3, 4, 5];
  List<String> myStrings = ['apple', 'banana', 'orange', 'grape'];

  print("List angka sebelum diacak: $myNumbers");
  List<int> shuffledNumbers = Utils.shuffleList(myNumbers);
  print("List angka setelah diacak: $shuffledNumbers");

  print("List string sebelum diacak: $myStrings");
  List<String> shuffledStrings = Utils.shuffleList(myStrings);
  print("List string setelah diacak: $shuffledStrings");
}
