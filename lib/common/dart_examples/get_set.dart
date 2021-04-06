///Test class, no review
///test
class GetSet {
  int? _value;

  ///test
  GetSet({int? initValue}){
    initValue == null ? _value = 0 : _value = initValue;
  }

  ///test
  int get value => _value ?? 0;
  set value(int val) => _value = val;
}