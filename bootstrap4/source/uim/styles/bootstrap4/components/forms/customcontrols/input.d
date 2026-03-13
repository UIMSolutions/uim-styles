module uim.bootstrap.bs4.components.forms.customcontrols.input;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4CustomInput : BS4Obj {
  mixin(H5This!("INPUT", ["custom-control-input"], null, true));
  override void initialize() {
    super.initialize;
    _single = true;
  }
}
static BS4CustomInput");

///
unittest {
  assert(BS4CustomInput);
  assert(BS4CustomInput == `<input class="custom-control-input">`);
}}
