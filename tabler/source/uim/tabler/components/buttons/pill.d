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
  mixin TABTemplate!(["btn-pill"]);

  mixin(TABTemplate!("ButtonPill"));
}
///
unittest {
  assert(TABButtonPill() == `<button class="btn btn-pill" type="button"></button>`);
}
