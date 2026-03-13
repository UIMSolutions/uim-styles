module uim.bootstrap.bs4.components.dropdowns.form;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4DropdownForm : BS4Obj {
  mixin(H5This!("form", null, null));
}
static BS4DropdownForm");

///
unittest {
  assert(BS4DropdownForm == `<form></form>`);
}}
