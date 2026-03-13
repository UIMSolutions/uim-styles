module uim.bootstrap.bs4.components.modals.modal;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4Modal : H5Div {
  mixin H5This!(["modal"], `["tabindex":"-1", "role":"dialog", "aria-hidden":"true"]`));
  ///
unittest {
    assert(BS4Modal == `<div class="modal" aria-hidden="true" role="dialog" tabindex="-1"></div>`);
  }}

  O fade(bool mode = true) {
    if (mode) _classes ~= "fade";
    return cast(O) this;
  }

  ///
unittest {
    assert(BS4Modal.fade == `<div class="fade modal" aria-hidden="true" role="dialog" tabindex="-1"></div>`);
  }}
}
static BS4Modal");
///
unittest {
  assert(BS4Modal == `<div class="modal" aria-hidden="true" role="dialog" tabindex="-1"></div>`);
}}
