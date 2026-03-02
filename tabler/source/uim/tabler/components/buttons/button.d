module uim.tabler.components.buttons.button;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
  * Tabler button component.
  * Button is used to create a button element. 
  * It supports various styles and colors to match the Tabler design system.
  * Example usage:
  * ```
  * auto button = TABButton()
  *   .color("primary")
  *   .colorBg("primary")
  *   .colorText("white")
  *   .colorBorder("primary")
  *   .colorIcon("white")
  *   .colorAccent("primary")
  *   .colorGradient("primary")
  *   .colorGradientFrom("primary")
  *   .colorGradientTo("primary");
  * ```
  * 
  * @see https://docs.tabler.io/ui/components/buttons
  */
class TABButton : H5Button {
  mixin TABTemplate!(TABButton, ["btn"], ["type": "button"]);
  mixin(HtmlMethods!H5Button);
}
///
unittest {
  assert(TABButton() == `<button class="btn" type="button"></button>`);
}
