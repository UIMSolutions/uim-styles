module uim.bootstrap.bs4.components.dropdowns.text;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4DropdownText : BS4Obj {
  mixin(H5This!("p", null, null));
}
static BS4DropdownText");

///
unittest {
  assert(BS4DropdownText("Hallo") == `<p>Hallo</p>`);
}}
