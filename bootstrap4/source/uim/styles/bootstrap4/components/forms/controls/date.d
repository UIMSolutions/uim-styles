module uim.bootstrap.bs4.components.forms.controls.date;

import uim.bootstrap4;

mixin(ShowModule!());

@safe:  

class BS4InputDate : BS4Obj {
  mixin(H5This!("Input", ["form-control"], `["type":"date"]`));
  override public void initialize() {
    super.initialize;
    _single = true;
  }
}
static BS4InputDate"));

///
unittest {
  assert(BS4InputDate == `<input class="form-control" type="date">`);
}}