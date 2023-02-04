String checkNullName(dynamic name) {
  if (name == null) {
    return "John";
  } else {
    return name;
  }
}

void main(List<String> args) {
  //! EASY
  // convert string to int
  String number = '10';
  int number2;
  // output should be 10
  number2 = int.parse(number);
  print(number2);

  // convert int to string
  int number3 = 10;
  String number4;
  // output should be '10'
  number4 = number3.toString();
  print(number4);

  // uppercase and lowercase a string
  String name = 'ahmed';
  String upperCaseName;
  String lowerCaseName;
  // output should be AHMED and ahmed
  upperCaseName = name.toUpperCase();
  lowerCaseName = name.toLowerCase();
  print('$upperCaseName $lowerCaseName');

  // check if a string is empty or not
  String name2 = '';
  String name3 = 'ahmed';
  bool isEmpty;
  bool isNotEmpty;
  // output should be true and false
  isEmpty = name2.isEmpty;
  isNotEmpty = name3.isEmpty;
  print('$isEmpty $isNotEmpty');

  // check if a string contains a substring
  String name4 = 'ahmed';
  String substring = 'med';
  bool contains;
  // output should be true
  print(name4.contains(substring));

  // check the type of a variable
  dynamic name5 = 'ahmed';
  int number5 = 10;
  bool isString = name5.runtimeType == String;
  bool isInt = number5.runtimeType == String;
  // output should be true and false
  print('$isString $isInt');

  //! MEDIUM

  // convert map into Key- Value pairs in list without using for loop

  Map<String, int> grades = {'Ahmed': 75, 'Youssef': 82, 'Sherif': 90};
  List Data = [];
  grades.entries
      .map((element) => Data.add({element.key: element.value}))
      .toList();
  print(Data);

  // convert map into Key- Value pairs in list without using for loop
  List<MapEntry<String, int>> entries;
  // I don't know how to do it and if i assign a map to the entries list is shows that "A value of type 'Map<String, int>' can't be assigned to a variable of type 'MapEntry<String, int>'"
  // And if i looped using forEach is doesn't do any thing and i searched for a while and didn't find any thing 

  // convert this list into set
  List<int> numbers = [1, 2, 3, 4, 5, 1, 2, 3];
  Set<int> uniqueNumbers = numbers.toSet();
  print(uniqueNumbers);

  // check if "Ahmed" exsist in the map or not without using for loop
  Map<String, int> grades2 = {
    'Ahmed': 75,
    'Youssef': 82,
    'Sherif': 90,
    'Tawfik': 75,
    'Mohamed': 82,
    'Ali': 90
  };
  bool isAhmedExist;
  grades2.forEach((key, value) => {if (key == "Ahmed") isAhmedExist = true});

  // check if "Ahmed" exsist in the List or not without using for loop

  List<String> names = [
    'Ahmed',
    'Youssef',
    'Sherif',
    'Tawfik',
    'Mohamed',
    'Ali'
  ];

  bool isAhmedExistInList;
  names.forEach((element) => {if (element == "Ahmed") isAhmedExist = true});

  //! BONUS NULL SAFETY
  // Search for this "??" double question mark in the code and try to understand what it does
  // "https://jelenaaa.medium.com/what-are-in-dart-df1f11706dd6"
  // check if the name is null or not if it is null then return "John" else return the name
  String? namee;
  String defaultName = 'John Doe';
  String actualName = checkNullName(namee);
  print(actualName);
  actualName = checkNullName(defaultName);
  print(actualName);

  // check if the name is null or not if it is null then return "John" else return the name
}
