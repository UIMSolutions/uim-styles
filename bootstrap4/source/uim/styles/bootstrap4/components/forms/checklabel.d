module uim.bootstrap.bs4.components.forms.checklabel;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4FormCheckLabel : BS4Obj {
  mixin(H5This!("LABEL", ["form-check-label"]));
}
static BS4FormCheckLabel");

///
unittest {
  assert(BS4FormCheckLabel == `<label class="form-check-label"></label>`);
}}
