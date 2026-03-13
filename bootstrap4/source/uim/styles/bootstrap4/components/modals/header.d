module uim.bootstrap.bs4.components.modals.header;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4ModalHeader : H5Div {
  mixin H5This!(["modal-header"]));
}
static BS4ModalHeader");

///
unittest {
  assert(BS4ModalHeader() == `<div class="modal-header"></div>`);
}}