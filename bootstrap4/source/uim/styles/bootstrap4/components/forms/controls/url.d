module uim.bootstrap.bs4.components.forms.controls.url;

import uim.bootstrap4;

mixin(ShowModule!());

@safe:  

class BS4InputUrl : BS4Input {
  mixin(H5This!("", null, `["type":"url"]`));
}
static BS4InputUrl"));

///
unittest {
  assert(BS4InputUrl == `<input class="form-control" type="url">`);
}}