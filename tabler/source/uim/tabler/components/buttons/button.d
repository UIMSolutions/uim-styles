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
  mixin H5Template!(TABButton, ["btn"], ["type": "button"]);
  mixin(HtmlMethods!TABButton);
}
///
unittest {
  assert(TABButton() == `<button class="btn" type="button"></button>`);
  assert(TABButton(["testclass"]) == `<button class="btn testclass" type="button"></button>`);
  assert(TABButton(["a":"b"]) == `<button class="btn" a="b" type="button"></button>`);
  assert(TABButton(["testclass"], ["a":"b"]) == `<button class="btn testclass" a="b" type="button"></button>`);

  assert(TABButton("Hello") == `<button class="btn" type="button">Hello</button>`);
  assert(TABButton(["testclass"], "Hello") == `<button class="btn testclass" type="button">Hello</button>`);
  assert(TABButton(["a":"b"], "Hello") == `<button class="btn" a="b" type="button">Hello</button>`);
  assert(TABButton(["testclass"], ["a":"b"], "Hello") == `<button class="btn testclass" a="b" type="button">Hello</button>`);
}
