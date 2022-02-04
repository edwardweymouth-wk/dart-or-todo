library example.mui;

import 'dart:html';
import 'package:over_react/over_react.dart';
import 'package:react/react_dom.dart' as react_dom;
import 'package:react_material_ui/react_material_ui.dart';
import 'package:react_material_ui/for_cp_use_only/styled.dart';
import 'package:react_material_ui/styles/theme_provider.dart';

import 'custom_button.dart';

final StyledButton = styled(Button, stylesMap: {
  'backgroundColor': 'orange',
});

void main() {
  var content = (ThemeProvider()..theme = wkTheme)(
    (Button()
      ..onFocusVisible = (e) {
        assert(e is SyntheticFocusEvent);

        print('focus is visible');
      }
      ..variant = ButtonVariant.contained
      ..color = 'primary'
      ..onClick = ((_) => print('Button was clicked!'))
      // TODO: update this to a typed `TouchRipple()` map once we have a wrapper for it.
      ..TouchRippleProps = {
        'center': true,
        'style': {'color': '#fc0373'}
      }
    )('Button'),
    (CustomButton()
      ..size = 'large'
      ..color = ButtonColor.primary
      ..style = {'borderRadius': '10rem'}
      ..onClick = ((_) => print('Custom button was clicked!'))
      // TODO: update this to a typed `TouchRipple()` map once we have a wrapper for it.
      ..TouchRippleProps = {
        'center': true,
        'style': {'color': '#ffc336'}
      }
    )('Custom Button'),
    StyledButton()('Styled Button'),
  );

  react_dom.render(content, querySelector('#main'));
}