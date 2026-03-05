module uim.bootstrap5.basic.components.modals.modal;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

class BS5Modal : H5Div {
  mixin H5Template!(BS5Modal, ["modal"], [
      "tabindex": "-1",
      "role": "dialog",
      "aria-hidden": "true"
    ]);

  // O fade(bool mode = true) {
  //   if (mode)
  //     _classes ~= "fade";
  //   return cast(O)this;
  // }
}
///
unittest {
  assert(BS5Modal() == `<div class="modal" aria-hidden="true" role="dialog" tabindex="-1"></div>`);
  assert(BS5Modal(["testclass"]) == `<div class="modal testclass" aria-hidden="true" role="dialog" tabindex="-1"></div>`);
  assert(BS5Modal(["a":"b"]) == `<div class="modal" a="b" aria-hidden="true" role="dialog" tabindex="-1"></div>`);
  assert(BS5Modal(["testclass"], ["a":"b"]) == `<div class="modal testclass" a="b" aria-hidden="true" role="dialog" tabindex="-1"></div>`);

  assert(BS5Modal("Hello") == `<div class="modal" aria-hidden="true" role="dialog" tabindex="-1">Hello</div>`);
  assert(BS5Modal(["testclass"], "Hello") == `<div class="modal testclass" aria-hidden="true" role="dialog" tabindex="-1">Hello</div>`);
  assert(BS5Modal(["a":"b"], "Hello") == `<div class="modal" a="b" aria-hidden="true" role="dialog" tabindex="-1">Hello</div>`);
  assert(BS5Modal(["testclass"], ["a":"b"], "Hello") == `<div class="modal testclass" a="b" aria-hidden="true" role="dialog" tabindex="-1">Hello</div>`);
}
