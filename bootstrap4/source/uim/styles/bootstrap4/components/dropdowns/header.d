module uim.bootstrap.bs4.components.dropdowns.header;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4DropdownHeader : BS4Obj {
  mixin(H5This!("H6", ["dropdown-header"]));
static BS4DropdownHeader");
}
///
unittest {
  assert(BS4DropdownHeader() == `<h6 class="dropdown-header"></h6>`);
}
