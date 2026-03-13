module uim.bootstrap.bs4.components.dropdowns.togglebutton;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4DropdownTogglebutton : BS4Button {
  mixin(H5This!("Button", ["btn", "dropdown-toggle"], `["aria-haspopup":"true", "aria-expanded":"false"]`));
}
static BS4DropdownTogglebutton");
///
unittest {
  assert(BS4DropdownTogglebutton == `<button class="btn dropdown-toggle" aria-expanded="false" aria-haspopup="true" type="button"></button>`);
  assert(BS4DropdownTogglebutton.id("id") == `<button id="id" class="btn dropdown-toggle" aria-expanded="false" aria-haspopup="true" type="button"></button>`);
}}
