module uim.bootstrap.bs4.components.forms.controls.text;

import uim.bootstrap4;

mixin(ShowModule!());

@safe:  

class BS4InputText : BS4Input {
  mixin(H5This!("", null, `["type":"text"]`));
}
static BS4InputText"));

///
unittest {
  assert(BS4InputText == `<input class="form-control" type="text">`);
}}