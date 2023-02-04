void main(List<String> args) {
  // use map to convert every grade with A , B , C , D , F
  Map<String, int> grades = {'Ahmed': 75, 'Youssef': 82, 'Sherif': 90};
  Map<String, String> gradesWithLetters = grades.map((key, value) {
    if (value >= 85 && value <= 100) {
      return MapEntry(key, 'A');
    } else if (value > 75 && value < 85)
      return MapEntry(key, 'B');
    else if (value > 65 && value <= 75)
      return MapEntry(key, 'C');
    else if (value >= 50 && value <= 65)
      return MapEntry(key, 'D');
    else
      return MapEntry(key, 'F');
  });
  print(gradesWithLetters);
  // output should be {'Ahmed': 'C', 'Youssef': 'B', 'Sherif': 'A'}
}
