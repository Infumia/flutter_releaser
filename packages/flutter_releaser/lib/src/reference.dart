abstract interface class Ref<T> {
  T get value;

  set value(T value);
}

class ValueRef<T> implements Ref<T> {
  T _value;

  ValueRef(this._value);

  @override
  T get value => _value;

  @override
  set value(T value) {
    _value = value;
  }
}
