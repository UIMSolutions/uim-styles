module uim.bootstrap.bs4.components.forms.inputgroups.text;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4InputGroupText : H5Div {
  mixin H5This!(["input-group-text"]));
}
static BS4InputGroupText");

///
unittest {
  assert(BS4InputGroupText == `<div class="input-group-text"></div>`);
}}