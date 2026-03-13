module uim.bootstrap.bs4.components.modals.button;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4ModalButton : BS4Obj {
  mixin(H5This!("Button", ["btn"], `["data-toggle":"modal"]`));

  O target(string targetId) { attribute("data-target"] = "#"~targetId;  return this; }
  O backdrop(bool modeBackdrop = true) { attribute("data-backdrop"] = "static"; return this; }
  O keyboard(bool mode = true) { if (mode == false) attribute("data-keyboard"] = "false"; 
    return this;
  }
}
static BS4ModalButton");
///
unittest {
  // assert(BS4ModalButton == `<div class="modal" aria-hidden="true" role="dialog" tabindex="-1"></div>`);
}}