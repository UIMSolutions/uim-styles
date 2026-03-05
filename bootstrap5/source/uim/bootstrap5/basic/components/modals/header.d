module uim.bootstrap5.basic.components.modals.header;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5ModalHeader : H5Div {
  mixin H5Template!(BS5ModalHeader, ["modal-header"]);
}
///
unittest {
  assert(BS5ModalHeader() == `<div class="modal-header"></div>`);
  assert(BS5ModalHeader(["testclass"]) == `<div class="modal-header testclass"></div>`);
  assert(BS5ModalHeader(["a":"b"]) == `<div class="modal-header" a="b"></div>`);
  assert(BS5ModalHeader(["testclass"], ["a":"b"]) == `<div class="modal-header testclass" a="b"></div>`);

  assert(BS5ModalHeader("Hello") == `<div class="modal-header">Hello</div>`);
  assert(BS5ModalHeader(["testclass"], "Hello") == `<div class="modal-header testclass">Hello</div>`);
  assert(BS5ModalHeader(["a":"b"], "Hello") == `<div class="modal-header" a="b">Hello</div>`);
  assert(BS5ModalHeader(["testclass"], ["a":"b"], "Hello") == `<div class="modal-header testclass" a="b">Hello</div>`);
}