module uim.bootstrap.bs4.components.forms.customcontrols.fileinput;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4CustomFileInput : BS4Obj {
  mixin(H5This!("INPUT", ["custom-file-input"]));
  override public void initialize() {
    super.initialize;
    _single = true;
  }
}

static BS4CustomFileInput");
///
unittest {
  assert(BS4CustomFileInput == `<input class="custom-file-input">`);
}}
