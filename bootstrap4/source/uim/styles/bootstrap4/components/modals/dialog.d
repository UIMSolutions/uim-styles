module uim.bootstrap.bs4.components.modals.dialog;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4ModalDialog : H5Div {
  mixin H5This!(["modal-dialog"], `["role":"document"]`));

  O fade(bool mode = true) { return this.addClasses("fade"); }
  ///
unittest {
    assert(BS4ModalDialog.fade == `<div class="fade modal-dialog" role="document"></div>`);
  }}

  O size(string aSize) { return this.addClasses("modal-"~aSize); }
  ///
unittest {
    assert(BS4ModalDialog.size("sm") == `<div class="modal-dialog modal-sm" role="document"></div>`);
  }}

  O centered(bool mode = true) { return this.addClasses("modal-dialog-centered"); }
  ///
unittest {
    assert(BS4ModalDialog.centered == `<div class="modal-dialog modal-dialog-centered" role="document"></div>`);
  }}
}
static BS4ModalDialog");
///
unittest {
  assert(BS4ModalDialog == `<div class="modal-dialog" role="document"></div>`);
}}