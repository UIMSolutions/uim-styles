module uim.bootstrap.bs4.components.modals.body_;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4ModalBody : H5Div {
  mixin H5This!(["modal-body"]));
}

static BS4ModalBody");

///
unittest {
  assert(BS4ModalBody == `<div class="modal-body"></div>`);
}}
