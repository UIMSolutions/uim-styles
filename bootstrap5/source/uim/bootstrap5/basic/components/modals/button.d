module uim.bootstrap5.basic.components.modals.button;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5ModalButton : H5Button {
  mixin H5Template!(BS5ModalButton, ["btn"], ["data-toggle":"modal"]);

  // BS5ModalButton target(string targetId) { attribute("data-target"] = "#"~targetId;  return this; }
  // BS5ModalButton backdrop(bool modeBackdrop = true) { attribute("data-backdrop"] = "static"; return this; }
  // BS5ModalButton keyboard(bool mode = true) { if (mode == false) attribute("data-keyboard"] = "false"; 
  //   return this;
  // }
}
///
unittest { 
  assert(BS5ModalButton() == `<button class="btn" data-toggle="modal"></button>`);
  assert(BS5ModalButton(["testclass"]) == `<button class="btn testclass" data-toggle="modal"></button>`);
  assert(BS5ModalButton(["a":"b"]) == `<button class="btn" a="b" data-toggle="modal"></button>`);
  assert(BS5ModalButton(["testclass"], ["a":"b"]) == `<button class="btn testclass" a="b" data-toggle="modal"></button>`);

  assert(BS5ModalButton("Hello") == `<button class="btn" data-toggle="modal">Hello</button>`);
  assert(BS5ModalButton(["testclass"], "Hello") == `<button class="btn testclass" data-toggle="modal">Hello</button>`);
  assert(BS5ModalButton(["a":"b"], "Hello") == `<button class="btn" a="b" data-toggle="modal">Hello</button>`);
  assert(BS5ModalButton(["testclass"], ["a":"b"], "Hello") == `<button class="btn testclass" a="b" data-toggle="modal">Hello</button>`);
}