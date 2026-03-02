module uim.tabler.components.buttons.icon;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABButtonIcon : H5Button {
  mixin TABTemplate!(TABButtonIcon, ["btn", "btn-icon"], ["type": "button"]);
  mixin(HtmlMethods!TABButtonIcon);
}
///
unittest {
  assert(TABButtonIcon() == `<button class="btn btn-icon" type="button"></button>`);
}
