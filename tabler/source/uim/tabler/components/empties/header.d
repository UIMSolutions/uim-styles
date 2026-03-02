module uim.tabler.components.empties.header;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABEmptyHeader : H5Div {
  mixin TABTemplate!(["empty-header"]);

  mixin(TABTemplate!("EmptyHeader"));
}

///
unittest {
  assert(TABEmptyHeader() == `<div class="empty-header"></div>`);
}
