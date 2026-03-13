module uim.bootstrap.bs4.components.navs.nav;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4Nav : BS4Obj {
  mixin(H5This!("Ul", ["nav"]));

  mixin(MyContent!("item", "BS4NavItem"));
  ///
unittest {
    assert(BS4Nav.item == `<ul class="nav"><li class="nav-item"></li></ul>`);
  }}

  mixin(MyContent!("header", "BS4NavHeader"));
  ///
unittest {
    assert(BS4Nav.header() == `<ul class="nav"><li class="nav-header"></li></ul>`);
  }}

  mixin(MyContent!("link", "this.item", "BS4NavLink"));
  ///
unittest {
    assert(BS4Nav.link == `<ul class="nav"><li class="nav-item"><a class="nav-link" href="#"></a></li></ul>`);
  }}

  O pills(bool mode = true) { if (mode) this.addClasses("nav-pills"); return this; }
  ///
unittest {
    assert(BS4Nav.pills == `<ul class="nav nav-pills"></ul>`);
  }}
}
static BS4Nav");

///
unittest {
  assert(BS4Nav == `<ul class="nav"></ul>`);
}}