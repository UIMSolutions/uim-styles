module uim.bootstrap5.basic.components.modals.title;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5ModalTitle : H5H5 {
  mixin H5Template!(BS5ModalTitle, ["modal-title"]);
}
///
unittest {
  assert(BS5ModalTitle() == `<h5 class="modal-title"></h5>`);
  assert(BS5ModalTitle(["testclass"]) == `<h5 class="modal-title testclass"></h5>`);
  assert(BS5ModalTitle(["a":"b"]) == `<h5 class="modal-title" a="b"></h5>`);
  assert(BS5ModalTitle(["testclass"], ["a":"b"]) == `<h5 class="modal-title testclass" a="b"></h5>`);

  assert(BS5ModalTitle("Hello") == `<h5 class="modal-title">Hello</h5>`);
  assert(BS5ModalTitle(["testclass"], "Hello") == `<h5 class="modal-title testclass">Hello</h5>`);
  assert(BS5ModalTitle(["a":"b"], "Hello") == `<h5 class="modal-title" a="b">Hello</h5>`);
  assert(BS5ModalTitle(["testclass"], ["a":"b"], "Hello") == `<h5 class="modal-title testclass" a="b">Hello</h5>`);
}