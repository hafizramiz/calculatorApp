class CalculatorModel{
  double _result = 0.0;
  double _firstNumber = 0.0;
  double _secondNumber = 0.0;

  double get result => _result;
  double get firstNumber => _firstNumber;
  double get secondNumber => _secondNumber;

  void setFirstNumber(double firstNumber){
    _firstNumber = firstNumber;
  }

  void setSecondNumber(double secondNumber){
    _secondNumber = secondNumber;
  }

  void add(){
    _result = _firstNumber + _secondNumber;
  }

  void subtract(){
    _result = _firstNumber - _secondNumber;
  }

  void multiply(){
    _result = _firstNumber * _secondNumber;
  }

  void divide(){
    _result = _firstNumber / _secondNumber;
  }
}