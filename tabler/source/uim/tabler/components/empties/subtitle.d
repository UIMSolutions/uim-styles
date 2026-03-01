module uim.tabler.components.empties.subtitle;

import uim.tabler;

mixin(ShowModule!());

@safe:


/**
  * Tabler empty subtitle component.
  *
  * https://tabler.io/docs/empty#subtitle
  */
class TABEmptySubtitle : H5P {
  mixin TABThis!(["empty-subtitle"]);

  mixin(TABTemplate!("EmptySubtitle"));
}
///
unittest {
  assert(TABEmptySubtitle() == `<p class="empty-subtitle"></p>`);
}
