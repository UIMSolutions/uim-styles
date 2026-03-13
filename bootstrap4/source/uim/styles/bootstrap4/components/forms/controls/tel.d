module uim.bootstrap.bs4.components.forms.controls.tel;

import uim.bootstrap4;

mixin(ShowModule!());

@safe:  

class BS4InputTel : BS4Input {
  mixin(H5This!("", null, `["type":"tel"]`));
}
static BS4InputTel"));

///
unittest {
  assert(BS4InputTel == `<input class="form-control" type="tel">`);
}}