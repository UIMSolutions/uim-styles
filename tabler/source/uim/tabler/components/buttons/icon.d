module uim.tabler.components.buttons.icon;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABButtonIcon : H5Button {
  mixin TABThis!(["btn", "btn-icon"], ["type": "button"]);

  mixin(TABTemplate!("ButtonIcon"));
}
///
unittest {
  assert(TABButtonIcon() == `<button class="btn btn-icon" type="button"></button>`);
}
