module uim.bootstrap.bs4.components.forms.controls.range;

import uim.bootstrap4;

mixin(ShowModule!());

@safe:  

class BS4InputRange : BS4Input {
  mixin(H5This!(null, null, `["type":"range"]`));
}
static BS4InputRange"));

///
unittest {
  assert(BS4InputRange == `<input class="form-control" type="range">`);  
}}