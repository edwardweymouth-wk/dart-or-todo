import 'dart:html';

import 'package:over_react/over_react.dart';
import 'package:over_react/react_dom.dart' as react_dom;

@Factory()
UiFactory<MyComponentProps> MyComponent;

@Props()
class MyComponentProps extends UiProps {

}

// ignore: deprecated_member_use
@Component()
// ignore: deprecated_member_use
class MyComponentComponent extends UiComponent<MyComponentProps> {
  @override
  Map getDefaultProps() => (newProps());

  @override
  render() { }
}

void main() {

  final container = querySelector('#app-container');
  react_dom.render((Dom.div()..className = 'container')(
        Dom.h1()('Click the button!'),
        (Dom.button()
          ..id = 'main_button'
        )('Click me')
      ), container);
}
