module uim.bootstrap.bs4.components.forms.controls.hidden;

import uim.bootstrap4;

mixin(ShowModule!());

@safe:  

class BS4InputHidden : BS4Input {
  mixin(H5This!("", null, `["type":"hidden"]`));
}
static BS4InputHidden"));

///
unittest {
  assert(BS4InputHidden == `<input class="form-control" type="hidden">`);
}}