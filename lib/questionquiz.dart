import 'question.dart';

class questionquiz {
  int _questionnumber = 0;
  List<question> _questionbank = [
    question('Some cats are actually allergic to humans', true),
    question('You can lead a cow down stairs but not up stairs.', false),
    question('Approximately one quarter of human bones are in the feet.', true),
    question('A slug\'s blood is green.', true),
    question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    question('It is illegal to pee in the Ocean in Portugal.', true),
    question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    question(
        'Te total surface area of two human lungs is approximately 70 square metres.',
        true),
    question('Google was originally called \"Backrub\".', true),
    question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];
  void nextquestion() {
    if (_questionnumber < _questionbank.length - 1) {
      _questionnumber++;
    }
    print(_questionnumber);
    print(_questionbank.length);
  }

  String getquestiontext() {
    return _questionbank[_questionnumber].questiontext;
  }

  bool getquestionanswer() {
    return _questionbank[_questionnumber].questionanswer;
  }

  bool isFinished() {
    if (_questionnumber >= _questionbank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionnumber = 0;
  }
}
