import 'dart:math' as math; //mathライブラリのインポート

List<String> _textList = [
  'キスしてください',
  '頭をなでてください',
  '足をなでてください',
  '背中にキスしてください',
  '足にキスしてください',
];

String getText() {
  var random = math.Random();
  var text = _textList[random.nextInt(_textList.length)];
  return text;
}