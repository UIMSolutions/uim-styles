module uim.bootstrap5.basic.components.modals.dialog;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

@CssClass("fade")
@CssClass("centered", "modal-dialog-centered")
class BS5ModalDialog : H5Div {
  mixin H5Template!(BS5ModalDialog, ["modal-dialog"], ["role":"document"]);

  // O size(string aSize) {
  //   return this.addClasses("modal-" ~ aSize);
  // }
  // ///
  // unittest {
  //   // assert(BS5ModalDialog.size(
  //       "sm") == `<div class="modal-dialog modal-sm" role="document"></div>`);
  // }
}
///
unittest {
  assert(BS5ModalDialog() == `<div class="modal-dialog" role="document"></div>`);
  assert(BS5ModalDialog(["testclass"]) == `<div class="modal-dialog testclass" role="document"></div>`);
  assert(BS5ModalDialog(["a":"b"]) == `<div class="modal-dialog" a="b" role="document"></div>`);
  assert(BS5ModalDialog(["testclass"], ["a":"b"]) == `<div class="modal-dialog testclass" a="b" role="document"></div>`);

  assert(BS5ModalDialog("Hello") == `<div class="modal-dialog" role="document">Hello</div>`);
  assert(BS5ModalDialog(["testclass"], "Hello") == `<div class="modal-dialog testclass" role="document">Hello</div>`);
  assert(BS5ModalDialog(["a":"b"], "Hello") == `<div class="modal-dialog" a="b" role="document">Hello</div>`);
  assert(BS5ModalDialog(["testclass"], ["a":"b"], "Hello") == `<div class="modal-dialog testclass" a="b" role="document">Hello</div>`);
}
