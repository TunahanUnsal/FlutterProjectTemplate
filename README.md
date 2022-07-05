------------------------------------------
## Flutter Project Template
------------------------------------------

##### Mobx
##### Navigator
##### MVVM
##### Extensions

------------------------------------------
## SNIPPETS FOR ANDROID STUDIO
------------------------------------------

#### Mobx:

```Dart
import 'package:mobx/mobx.dart';
part '$FILENAME$.g.dart';

class $CLASSNAME$ = _$CLASSNAME$ with _$$$CLASSNAME$;

abstract class _$CLASSNAME$ with Store, BaseViewModel {
}
```

------------------------------------------

#### Singleton Eager

```Dart
class $CLASSNAME$ {
      static final $$CLASSNAME$ _instance = $CLASSNAME$._init();
      static $$CLASSNAME$$ get instance => _instance;
      $CLASSNAME$._init();
}
```

------------------------------------------

#### BaseView

```Dart
BaseView<$VALUE$>(
        viewModel: $VALUE$(),
        onPageBuilder: ((buildContext, value) => Scaffold()),
        onModelReady: (model) {
          $VALUE$ = model;
        });
```
