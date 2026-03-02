module uim.tabler.components.buttons.squarelink;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABButtonSquareLink : TABButtonLink {
  mixin TABTemplate!(["btn-square"]);

  mixin(TABTemplate!("ButtonSquareLink"));
}
///
unittest {
  assert(TABButtonSquareLink() == `<a class="btn btn-square" role="button"></a>`);
}
