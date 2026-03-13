module uim.bootstrap.bs4.components.forms.form;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4Form : BS4Obj {
  mixin(H5This!("Form"));

  O inline(bool value = true) { return this.addClasses("form-inline"); }

  mixin(MyContent!("label", "H5Label"));
  mixin(MyContent!("formGroup", "BS4FormGroup"));
}
static BS4Form");

///
unittest {
  assert(BS4Form == `<form></form>`);
  assert(BS4Form.inline == `<form class="form-inline"></form>`);
}}