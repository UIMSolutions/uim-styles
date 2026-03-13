module uim.bootstrap.bs4.components.forms.controls.week;

import uim.bootstrap4;

mixin(ShowModule!());

@safe:  

class BS4InputWeek : BS4Input {
  mixin(H5This!("", null, `["type":"week"]`));
}
static BS4InputWeek"));

///
unittest {
  assert(BS4InputWeek == `<input class="form-control" type="week">`);
}}