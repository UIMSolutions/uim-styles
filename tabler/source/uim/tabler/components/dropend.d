module uim.tabler.components.dropend;

import uim.tabler;

@safe:

/** 
 * Dropend is used to create a dropend menu.
 * https://tabler.io/docs/dropdowns#dropend
 */
class TABDropend : H5Div {
  mixin TABThis!(["dropend"]);

  mixin(TABTemplate!("Dropend"));
}
///
unittest {
  assert(TABDropend() == `<div class="dropend"></div>`);
  assert(TABDropend("Hello") == `<div class="dropend">Hello</div>`);
}
