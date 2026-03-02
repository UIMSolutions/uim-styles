module uim.tabler.components.empties.icon;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * Tabler empty icon component.
 * https://tabler.io/docs/empty#icon
 */
class TABEmptyIcon : H5Div {
  mixin TABTemplate!(["empty-icon"]);

  mixin(TABTemplate!("EmptyIcon"));
}
///
unittest {
  assert(TABEmptyIcon() == `<div class="empty-icon"></div>`);
}
