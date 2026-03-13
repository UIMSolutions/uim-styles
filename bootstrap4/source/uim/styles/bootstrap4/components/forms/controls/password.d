module uim.bootstrap.bs4.components.forms.controls.password;

import uim.bootstrap4;

mixin(ShowModule!());

@safe:  

class BS4Password : BS4Input {
  mixin(H5This!(null, ["form-control"], `["type":"password"]`));
}
static BS4Password"));

///
unittest {
    assert(BS4Password == `<input class="form-control" type="password">`);
}}