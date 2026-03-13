module uim.bootstrap.bs4.components.forms.controls.radio;

import uim.bootstrap4;

mixin(ShowModule!());

@safe:  

class BS4Radio : BS4Input {
  mixin(H5This!("", null, `["type":"radio"]`));
}
static BS4Radio"));

///
unittest {
  assert(BS4Radio == `<input class="form-control" type="radio">`);
}}