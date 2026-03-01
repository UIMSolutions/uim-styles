module uim.tabler.components.buttons.iconlink;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABButtonIconLink : TABButtonLink {
  mixin TABThis!(["btn-icon"]);

  mixin(TABTemplate!("ButtonIconLink"));
}
///
unittest {
  assert(TABButtonIconLink() == `<a class="btn btn-icon" role="button"></a>`);
}
