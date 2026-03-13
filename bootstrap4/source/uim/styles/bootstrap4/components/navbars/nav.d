module uim.bootstrap.bs4.components.navbars.nav;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4NavbarNav : BS4Obj {
  mixin(H5This!("Ul", ["navbar-nav"]));

  mixin(MyContent!("item", "BS4NavItem"));
  
  mixin(MyContent!("link", "this.item", "BS4NavLink"));
}

static BS4NavbarNav");

///
unittest {
  assert(BS4NavbarNav == `<ul class="navbar-nav"></ul>`);
  assert(BS4NavbarNav.item == `<ul class="navbar-nav"><li class="nav-item"></li></ul>`);
  assert(BS4NavbarNav.link == `<ul class="navbar-nav"><li class="nav-item"><a class="nav-link" href="#"></a></li></ul>`);
}}
