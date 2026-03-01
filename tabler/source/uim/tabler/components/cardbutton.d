module uim.tabler.components.cardbutton;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * CardButton is used to create a button in the Card component.
 * https://tabler.io/docs/card#card-buttons
 */
class TABCardButton : H5A {
  mixin TABThis!(["card-btn"]);

  mixin(TABTemplate!("CardButton"));
}
///
unittest {
  assert(TABCardButton() == `<a class="card-btn"></a>`);
}
