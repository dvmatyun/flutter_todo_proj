import 'dart:async';

//dart.dev func:
Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (var val in stream) {
    sum += val; // 1..5
  }
  return sum;
}

//Single-subscription stream
Stream<int> simpleGenerator(int maxValue) async* {
  for (int i = 0; i < maxValue; i++){
    yield i;
    print("yielded i=$i");
  }
}

class MyControllerClass extends Stream<int> implements Sink<int> {
  List<int> _cachedValues = <int>[];

  StreamController<int> _myController = StreamController<int>.broadcast();

  Stream<int> get _myStream async* {
    for (final val in _cachedValues) {
      yield val;
    }
    yield* _myController.stream;
  }

  @override
  void add(int data) {
    _cachedValues.add(data);
    _myController.add(data);
  }

  @override
  void close() {
    _myController.close();
    //_cachedValues.clear();
  }

  @override
  StreamSubscription<int> listen(
      void Function(int event)? onData, {
        Function? onError,
        void Function()? onDone,
        bool? cancelOnError,
      }) =>
      _myStream.listen(
        onData,
        onError: onError,
        onDone: onDone,
        cancelOnError: cancelOnError,
      );
}

Future<void> runStreamExamp() async {
  var controllerClass = MyControllerClass()..add(1)..add(2)..add(3);
  print('controllerClass');
  sumStream(controllerClass).then((val) => print('sum1 $val'));
  sumStream(controllerClass).then((val) => print('sum2 $val'));
  controllerClass.close();

  var singleSubscrStream = simpleGenerator(5);
  var sum3 = await sumStream(singleSubscrStream);
  print('sum3: $sum3');
  var singleSubscrStream2 = simpleGenerator(5);
  var sum4 = await sumStream(singleSubscrStream2);
  print('sum4: $sum4');

  /* --Result:
    controllerClass
    yielded i=0
    yielded i=1
    yielded i=2
    yielded i=3
    yielded i=4
    sum1 6
    sum2 6
    sum3: 10
    yielded i=0
    yielded i=1
    yielded i=2
    yielded i=3
    yielded i=4
    sum4: 10
  */
}