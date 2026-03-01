module uim.tabler.components.buttons.square;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABButtonSquare : TABButton {
  mixin TABThis!(["btn-square"]);

  mixin(TABTemplate!("ButtonSquare"));
}
///
unittest {
  assert(TABButtonSquare() == `<button class="btn btn-square" type="button"></button>`);
}
