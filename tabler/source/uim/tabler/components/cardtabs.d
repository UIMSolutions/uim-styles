module uim.tabler.components.cardtabs;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * CardTabs is used to create tabs in the Card component.
 * https://tabler.io/docs/card#card-tabs
 */
class TABCardTabs : H5Div {
  mixin TABTemplate!(["card-tabs"]);

  mixin(TABTemplate!("CardTabs"));
}
///
unittest {
  assert(TABCardTabs() == `<div class="card-tabs"></div>`);
}
