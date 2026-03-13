module uim.bootstrap.bs4.components.dropdowns.dropdown;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4Dropdown : H5Div {
  mixin H5This!(["dropdown"]);

  mixin(MyContent!("menu", "BS4DropdownMenu"));
  mixin(MyContent!("toggleLink", "BS4ToggleLink"));
static BS4Dropdown");
}
///
unittest {
  assert(BS4Dropdown == `<div class="dropdown"></div>`);
  assert(BS4Dropdown.id("id") == `<div id="id" class="dropdown"></div>`);
}
