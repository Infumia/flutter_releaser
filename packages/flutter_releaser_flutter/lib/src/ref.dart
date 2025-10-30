import "package:flutter/foundation.dart";
import "package:flutter_releaser/flutter_releaser.dart";

class ValueNotifierRef<T> implements Ref<T> {
  final ValueNotifier<T> notifier;

  const ValueNotifierRef(this.notifier);

  @override
  T get value => notifier.value;

  @override
  set value(T value) => notifier.value = value;
}
