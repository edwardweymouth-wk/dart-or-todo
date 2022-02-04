import 'package:over_react/over_react.dart';
import 'package:react_material_ui/components/button.dart';

// part 'custom_button.over_react.g.dart';

final CustomButton = uiForwardRef<CustomButtonProps>(
  (props, ref) {
    final size = props.size ?? ButtonSize.small;
    final color = props.color ?? ButtonColor.secondary;
    final variant = props.variant ?? ButtonVariant.outlined;

    return (Button()
      ..addUnconsumedProps(props, const {})
      ..size = size
      ..color = color
      ..variant = variant
    )(props.children);
  },
  _$CustomButtonConfig, // ignore: undefined_identifier
);

mixin CustomButtonPropsMixin on UiProps {}

class CustomButtonProps = UiProps
    with ButtonBasePropsMixin, ButtonPropsMixin, CustomButtonPropsMixin;