module uim.bootstrap5.basic.components.modals.footer;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

class BS5ModalFooter : H5Div {
  mixin H5Template!(BS5ModalFooter, ["modal-footer"]);
}
///
unittest {
  assert(BS5ModalFooter() == `<div class="modal-footer"></div>`);
  assert(BS5ModalFooter(["testclass"]) == `<div class="modal-footer testclass"></div>`);
  assert(BS5ModalFooter(["a":"b"]) == `<div class="modal-footer" a="b"></div>`);
  assert(BS5ModalFooter(["testclass"], ["a":"b"]) == `<div class="modal-footer testclass" a="b"></div>`);
  
  assert(BS5ModalFooter("Hello") == `<div class="modal-footer">Hello</div>`);
  assert(BS5ModalFooter(["testclass"], "Hello") == `<div class="modal-footer testclass">Hello</div>`);
  assert(BS5ModalFooter(["a":"b"], "Hello") == `<div class="modal-footer" a="b">Hello</div>`);
  assert(BS5ModalFooter(["testclass"], ["a":"b"], "Hello") == `<div class="modal-footer testclass" a="b">Hello</div>`);
}
