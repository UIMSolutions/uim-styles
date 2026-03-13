module uim.bootstrap.bs4.components.forms.controls.datetime;

import uim.bootstrap4;

mixin(ShowModule!());

@safe:  

class BS4InputDateTime : BS4Input {
  mixin(H5This!("", null, `["type":"datetime-local"]`));
}
static BS4InputDateTime"));

///
unittest {
  assert(BS4InputDateTime == `<input class="form-control" type="datetime-local">`);
}}