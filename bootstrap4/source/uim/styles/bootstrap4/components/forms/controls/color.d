module uim.bootstrap.bs4.components.forms.controls.color;

import uim.bootstrap4;

mixin(ShowModule!());

@safe:  

class BS4InputColor : BS4Input {
  mixin(H5This!("", null, `["type":"color"]`));
}
static BS4InputColor"));

///
unittest {
  assert(BS4InputColor() == `<input class="form-control" type="color">`);
}}