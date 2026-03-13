module uim.bootstrap.bs4.components.forms.text;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4FormText : BS4Obj {
  mixin(H5This!("SMALL", ["form-text"]));
}
static BS4FormText");

///
unittest {
  assert(BS4FormText == `<small class="form-text"></small>`);
}}
