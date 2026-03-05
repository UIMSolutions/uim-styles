module uim.bootstrap5.basic.components.modals.content;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5ModalContent : H5Div {
  mixin H5Template!(BS5ModalContent, ["modal-content"]);

  // O fade(bool mode = true) { return this.addClasses("fade"); }

  // // mixin(MyContent!("header", "BS5ModalHeader"));
  // // mixin(MyContent!("body_", "BS5ModalBody"));
  // // mixin(MyContent!("footer", "BS5ModalFooter"));
}
///
unittest {
  assert(BS5ModalContent() == `<div class="modal-content"></div>`);
  assert(BS5ModalContent(["testclass"]) == `<div class="modal-content testclass"></div>`);
  assert(BS5ModalContent(["a":"b"]) == `<div class="modal-content" a="b"></div>`);
  assert(BS5ModalContent(["testclass"], ["a":"b"]) == `<div class="modal-content testclass" a="b"></div>`);

  assert(BS5ModalContent("Hello") == `<div class="modal-content">Hello</div>`);
  assert(BS5ModalContent(["testclass"], "Hello") == `<div class="modal-content testclass">Hello</div>`);
  assert(BS5ModalContent(["a":"b"], "Hello") == `<div class="modal-content" a="b">Hello</div>`);
  assert(BS5ModalContent(["testclass"], ["a":"b"], "Hello") == `<div class="modal-content testclass" a="b">Hello</div>`);
}