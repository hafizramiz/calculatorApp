class CalculatorButtonItem {
  final String buttonValue;
  final ButtonType buttonType;

  CalculatorButtonItem({required this.buttonValue, required this.buttonType});
}

enum ButtonType { number, operator, function, equal, clear, none }