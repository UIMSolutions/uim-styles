module uim.bootstrap.bs4.components.forms.controls.image;

import uim.bootstrap4;

mixin(ShowModule!());

@safe:  

class BS4InputImage : BS4Obj {
  mixin(H5This!("Input", ["form-control"], `["type":"image"]`));
  override public void initialize() {
    super.initialize;
    _single = true;
  }
}
static BS4InputImage"));

///
unittest {
  assert(BS4InputImage == `<input class="form-control" type="image">`);
}}