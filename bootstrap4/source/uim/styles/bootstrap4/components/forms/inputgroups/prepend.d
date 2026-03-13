module uim.bootstrap.bs4.components.forms.inputgroups.prepend;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4InputGroupPrepend : H5Div {
  mixin H5This!(["input-group-prepend"]));

  mixin(MyContent!("text", "BS4InputGroupText"));
  ///
unittest {
    assert(BS4InputGroupPrepend.text == `<div class="input-group-prepend"><div class="input-group-text"></div></div>`);
  }}
}
static BS4InputGroupPrepend");

///
unittest {
  assert(BS4InputGroupPrepend == `<div class="input-group-prepend"></div>`);
}}