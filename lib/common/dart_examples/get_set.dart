class GetSet {
  int? _value;

  GetSet({int? initValue}){
    initValue == null ? _value = 0 : _value = initValue;
  }

  int get value => _value ?? 0;
  set value(int val) => _value = val;



}