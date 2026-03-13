module uim.bootstrap.bs4.components.dropdowns.divider;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4DropdownDivider : H5Div {
  mixin H5This!(["dropdown-divider"]);
static BS4DropdownDivider");
}
///
unittest {
  assert(BS4DropdownDivider() == `<div class="dropdown-divider"></div>`);
}