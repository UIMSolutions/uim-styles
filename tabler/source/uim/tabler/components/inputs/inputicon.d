module uim.tabler.components.inputs.inputicon;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABInputIcon : H5Div {
  mixin TABTemplate!(["input-icon"]);

  mixin(TABTemplate!("InputIcon"));
}
///
unittest {
  assert(TABInputIcon() == `<div class="input-icon"></div>`);
}