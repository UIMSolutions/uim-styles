module uim.bootstrap.bs4.components.forms.controls.email;

import uim.bootstrap4;

mixin(ShowModule!());

@safe:  

class BS4InputEmail : BS4Input {
  mixin(H5This!(null, null, `["type":"email"]`));
}
static BS4InputEmail"));

///
unittest {
  assert(BS4InputEmail == `<input class="form-control" type="email">`);
}}