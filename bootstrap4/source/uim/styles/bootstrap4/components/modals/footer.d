module uim.bootstrap.bs4.components.modals.footer;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4ModalFooter : H5Div {
  mixin H5This!(["modal-footer"]));
}
static BS4ModalFooter");

///
unittest {
  assert(BS4ModalFooter() == `<div class="modal-footer"></div>`);
}}