module uim.bootstrap.bs4.components.forms.controls.submit;

import uim.bootstrap4;

mixin(ShowModule!());

@safe:  

class BS4InputSubmit : BS4Obj {
  mixin(H5This!("Input", ["form-control"], `["type":"submit"]`));
  override public void initialize() {
    super.initialize;
    _single = true;
  }
}
static BS4InputSubmit"));

///
unittest {
  assert(BS4InputSubmit == `<input class="form-control" type="submit">`);
}}