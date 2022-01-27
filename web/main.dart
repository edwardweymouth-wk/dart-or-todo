import 'dart:html';
import 'dart:svg';

import 'package:over_react/over_react.dart';
import 'package:over_react/react_dom.dart' as react_dom;

// mixin FancyBorderProps on UiProps {} // note: no custom props

// UiFactory<FancyBorderProps> FancyBorder = uiFunction(
//   (props) {
//     return (Dom.div()..className = 'fancy-border')(props.children);
//   },
//   // ignore statement is required for passing analysis
//   $FancyBorderConfig, // ignore: undefined_identifier
// );

void main() {
  final container = querySelector('#app-container');
  // final count = useState(0);
  // print(count);

  void _handleButtonClick(SyntheticMouseEvent event) {
    print('hello');
  }

  react_dom.render(
    (Dom.div()..className = 'container')(
      (Dom.div()..className = 'navbar navbar-light bg-light')(
        (Dom.div()..className = 'container-fluid')(
          (Dom.a()..className = 'navbar-brand'..href = '#')(
            (Dom.img()..src = 'https://s27.q4cdn.com/275725013/files/design/header-logo-black.png')()
          )
        )
      ),
      (Dom.div()..className = 'jumbotron')(
        (Dom.h1()..addTestId('header'))('🏄🏽‍♂️ Hey World 🏄‍♀️'), 
      ),
      (Dom.div()..className = 'row align-items-start')(
        (Dom.div()..className = 'col')(
          'A clickable button',
          (Dom.button()..id = 'main_button'..onClick = _handleButtonClick)('Click me')
        ),
         (Dom.div()..className = 'col')(
          'Grid Two'
        ),
         (Dom.div()..className = 'col')(
          'Grid Three'
        )
      )
    )
, container
  );
}
