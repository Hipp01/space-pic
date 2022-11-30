import 'dart:math';

class Utils {
  static String randomImage() {
    var intValue = Random().nextInt(10);
    switch (intValue) {
      case 0:
        return 'assets/images/0.jpg';
      case 1:
        return 'assets/images/1.jpg';
      case 2:
        return 'assets/images/2.jpg';
      case 3:
        return 'assets/images/3.jpg';
      case 4:
        return 'assets/images/4.jpg';
      case 5:
        return 'assets/images/5.jpg';
      case 6:
        return 'assets/images/6.jpg';
      case 7:
        return 'assets/images/7.jpg';
      case 8:
        return 'assets/images/8.jpg';
      case 9:
        return 'assets/images/9.jpg';
      default:
        return 'assets/images/0.jpg';
    }
  }

  static String associaiteImage(String description) {
    if (description.contains('Mars')) {
      return 'assets/images/4.jpg';
    } else if (description.contains('Jupiter')) {
      return 'assets/images/5.jpg';
    } else if (description.contains('Saturn')) {
      return 'assets/images/6.jpg';
    } else if (description.contains('Uranus')) {
      return 'assets/images/7.jpg';
    } else if (description.contains('Neptune')) {
      return 'assets/images/8.jpg';
    } else if (description.contains('Moon')) {
      return 'assets/images/9.jpg';
    } else if (description.contains('Sun')) {
      return 'assets/images/0.jpg';
    } else if (description.contains('Earth')) {
      return 'assets/images/3.jpg';
    } else if (description.contains('Venus')) {
      return 'assets/images/2.jpg';
    } else if (description.contains('Mercury')) {
      return 'assets/images/1.jpg';
    } else {
      return randomImage();
    }
  }
}
