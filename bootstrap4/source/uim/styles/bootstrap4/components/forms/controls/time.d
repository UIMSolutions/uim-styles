module uim.bootstrap.bs4.components.forms.controls.time;

import uim.bootstrap4;

mixin(ShowModule!());

@safe:  

class BS4InputTime : BS4Input {
  mixin(H5This!("", null, `["type":"time"]`));
}
static BS4InputTime"));

///
unittest {
  assert(BS4InputTime == `<input class="form-control" type="time">`);
}}