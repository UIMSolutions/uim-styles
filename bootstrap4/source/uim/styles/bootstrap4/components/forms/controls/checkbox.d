module uim.bootstrap.bs4.components.forms.controls.checkbox;

import uim.bootstrap4;

mixin(ShowModule!());

@safe:  

class BS4Checkbox : BS4Input {
  mixin(H5This!(null, null, `["type":"checkbox"]`));
}
static BS4Checkbox"));
///
///
unittest {
  assert(BS4Checkbox == `<input class="form-control" type="checkbox">`);
}}