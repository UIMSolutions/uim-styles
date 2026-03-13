module uim.bootstrap.bs4.components.forms.controls.textarea;

import uim.bootstrap4;

mixin(ShowModule!());

@safe:  

class BS4InputTextarea : BS4Obj {
  mixin(H5This!("textarea", ["form-control"]));

  mixin(MyAttribute!"rows");
  mixin(MyAttribute!"cols");
}
static BS4InputTextarea"));

///
unittest {
    assert(BS4InputTextarea == `<textarea class="form-control"></textarea>`);
}}