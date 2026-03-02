module uim.tabler.components.empties.action;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABEmptyAction : H5Div {
  mixin TABTemplate!(["empty-action"]);

  mixin(TABTemplate!("EmptyAction"));
}
///
unittest {
  assert(TABEmptyAction() == `<div class="empty-action"></div>`);
}
