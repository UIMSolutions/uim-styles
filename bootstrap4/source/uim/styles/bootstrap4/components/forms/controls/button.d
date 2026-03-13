module uim.bootstrap.bs4.components.forms.controls.button;

import uim.bootstrap4;

mixin(ShowModule!());

@safe:  

class BS4InputButton : BS4Input {
  mixin(H5This!(null, null, `["type":"button"]`));
}
static BS4InputButton"));
///
unittest {
  assert(BS4InputButton == `<input class="form-control" type="button">`);
}}