module uim.tabler.components.buttons.pilllink;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABButtonPillLink : TABButtonLink {
  mixin TABThis!(["btn-pill"]);
  mixin(TABTemplate!("ButtonPillLink"));
}

///
unittest {
  assert(TABButtonPillLink() == `<a class="btn btn-pill" role="button"></a>`);
}
