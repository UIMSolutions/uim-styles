module uim.tabler.components.navs.navlinktitle;

import uim.tabler;

mixin(ShowModule!());

@safe:

/// NavLinkTitle is used to create a title for a nav link. It is used in the NavLink component.
class TABNavLinkTitle : H5Span {
  mixin TABTemplate!(["nav-link-title"]);

  mixin(TABTemplate!("NavLinkTitle"));
}

///
unittest {
  assert(TABNavLinkTitle() == `<span class="nav-link-title"></span>`);
}
