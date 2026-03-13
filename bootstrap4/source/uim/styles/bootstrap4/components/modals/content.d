module uim.bootstrap.bs4.components.modals.content;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4ModalContent : H5Div {
  mixin H5This!(["modal-content"]));

  O fade(bool mode = true) { return this.addClasses("fade"); }
}
static BS4ModalContent");

///
unittest {
  assert(BS4ModalContent == `<div class="modal-content"></div>`);
}}