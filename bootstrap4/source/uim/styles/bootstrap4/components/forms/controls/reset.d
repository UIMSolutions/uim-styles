module uim.bootstrap.bs4.components.forms.controls.reset;

import uim.bootstrap4;

mixin(ShowModule!());

@safe:  

class BS4InputReset : BS4Input {
  mixin(H5This!("", null, `["type":"reset"]`));
}
static BS4InputReset"));
///
///
unittest {
  assert(BS4InputReset == `<input class="form-control" type="reset">`);
}}