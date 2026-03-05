module uim.bootstrap5.basic.components.modals.body_;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

/**
  * Modal body
  * https://getbootstrap.com/docs/5.0/components/modal/#modal-body
  * 
  * Modal body is used to wrap the content of the modal. It is used to add padding and to center the content vertically.
  * It is also used to add a scrollbar to the modal if the content is too long.
  * The modal body is a required element of the modal. It must be used inside the modal content.
  *
  * Example:
  * ```
  * auto modal = BS5Modal("My Modal", "This is the body of the modal.");
  * ```
  * This will create a modal with the title "My Modal" and the body "This is the body of the modal."
  */
class BS5ModalBody : H5Div {
  mixin H5Template!(BS5ModalBody, ["modal-body"]);
}
///
unittest {
  assert(BS5ModalBody() == `<div class="modal-body"></div>`);
  assert(BS5ModalBody(["testclass"]) == `<div class="modal-body testclass"></div>`);
  assert(BS5ModalBody(["a":"b"]) == `<div class="modal-body" a="b"></div>`);
  assert(BS5ModalBody(["testclass"], ["a":"b"]) == `<div class="modal-body testclass" a="b"></div>`);

  assert(BS5ModalBody("Hello") == `<div class="modal-body">Hello</div>`);
  assert(BS5ModalBody(["testclass"], "Hello") == `<div class="modal-body testclass">Hello</div>`);
  assert(BS5ModalBody(["a":"b"], "Hello") == `<div class="modal-body" a="b">Hello</div>`);
  assert(BS5ModalBody(["testclass"], ["a":"b"], "Hello") == `<div class="modal-body testclass" a="b">Hello</div>`);
}
