module uim.bootstrap.bs4.components.navs.header;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4NavHeader : BS4Obj {
  mixin(H5This!("li", ["nav-header"]));
}
static BS4NavHeader");

///
unittest {
  assert(BS4NavHeader() == `<li class="nav-header"></li>`);
}}