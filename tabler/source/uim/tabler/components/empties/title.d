module uim.tabler.components.empties.title;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABEmptyTitle : H5P {
  mixin TABThis!(["empty-title"]);

  mixin(TABTemplate!("EmptyTitle"));
}
///
unittest {
  assert(TABEmptyTitle() == `<p class="empty-title"></p>`);
}
