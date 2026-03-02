module uim.tabler.components.navs.navlinkicon;

import uim.tabler;

@safe:

class TABNavLinkIcon : H5Span {
  mixin TABTemplate!(["nav-link-icon"]);

  mixin(TABTemplate!("NavLinkIcon"));
}
///
unittest {
  assert(TABNavLinkIcon() == `<span class="nav-link-icon"></span>`);
}
