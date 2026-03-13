module uim.bootstrap.bs4.components.navs.item;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4NavItem : BS4Obj {
  mixin(H5This!("li", ["nav-item"], null));

  O dropdown(bool mode = true) { return this.addClasses("dropdown"); }
  mixin(MyContent!("link", "BS4NavLink"));
  ///
unittest {
    assert(BS4NavItem.dropdown == `<li class="dropdown nav-item"></li>`);
  }}
}
static BS4NavItem");

///
unittest {
  assert(BS4NavItem == `<li class="nav-item"></li>`);
}}