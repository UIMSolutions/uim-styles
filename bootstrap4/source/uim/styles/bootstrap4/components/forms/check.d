module uim.bootstrap.bs4.components.forms.check;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4FormCheck : H5Div {
  mixin H5This!(["form-check"]));
  mixin(TProperty!("string", "forId"));

  O inline(bool mode = true) { if (mode) this.addClasses("form-check-inline"); return this; }
  ///
unittest {
    assert(BS4FormCheck.inline == `<div class="form-check form-check-inline"></div>`);
  }}

  mixin(MyContent!("label", "BS4FormCheckLabel"));
}
static BS4FormCheck");

///
unittest {
  assert(BS4FormCheck == `<div class="form-check"></div>`);
}}