module uim.bootstrap.bs4.components.forms.inputgroups.append;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4InputGroupAppend : H5Div {
  mixin H5This!(["input-group-append"]));

  mixin(MyContent!("button", "BS4Button"));
  ///
unittest {
    assert(BS4InputGroupAppend.button == `<div class="input-group-append"><button class="btn" type="button"></button></div>`);
  }}

  mixin(MyContent!("text", "BS4InputGroupText"));
  ///
unittest {
    assert(BS4InputGroupAppend.text == `<div class="input-group-append"><div class="input-group-text"></div></div>`);
  }}
}
static BS4InputGroupAppend");

///
unittest {
  assert(BS4InputGroupAppend == `<div class="input-group-append"></div>`);
}}