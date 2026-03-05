module uim.tabler.components.buttons.pill;

import uim.tabler;

mixin(ShowModule!());

@safe:

/**
  * Pill buttons are used to create rounded buttons with a pill-like shape.
  * They can be used for various purposes, such as navigation, actions, or links.
  * The "btn-pill" class is added to the button element to achieve the pill shape.
  * Example usage:
  * ```html
  * <button class="btn btn-pill" type="button">Pill Button</button>
  * <a class="btn btn-pill" role="button">Pill Link</a>
  * ``` 
  */
class TABButtonPill : TABButton {
  mixin H5Template!(TABButtonPill, ["btn-pill"]);
}
///
unittest {
  assert(TABButtonPill() == `<button class="btn btn-pill" type="button"></button>`);  
  assert(TABButtonPill(["testclass"]) == `<button class="btn btn-pill testclass" type="button"></button>`);
  assert(TABButtonPill(["a":"b"]) == `<button class="btn btn-pill" a="b" type="button"></button>`);
  assert(TABButtonPill(["testclass"], ["a":"b"]) == `<button class="btn btn-pill testclass" a="b" type="button"></button>`);

  assert(TABButtonPill("Hello") == `<button class="btn btn-pill" type="button">Hello</button>`);
  assert(TABButtonPill(["testclass"], "Hello") == `<button class="btn btn-pill testclass" type="button">Hello</button>`);
  assert(TABButtonPill(["a":"b"], "Hello") == `<button class="btn btn-pill" a="b" type="button">Hello</button>`);
  assert(TABButtonPill(["testclass"], ["a":"b"], "Hello") == `<button class="btn btn-pill testclass" a="b" type="button">Hello</button>`);
}
