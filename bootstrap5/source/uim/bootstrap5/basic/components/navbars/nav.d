module uim.bootstrap5.basic.components.navbars.nav;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5NavbarNav : H5Ul {
  mixin H5Template!(BS5NavbarNav, ["navbar-nav"]);

//   // mixin(MyContent!("item", "BS5NavItem"));
  
//   // mixin(MyContent!("link", "this.item", "BS5NavLink"));
}
///
unittest {
  assert(BS5NavbarNav() == `<ul class="navbar-nav"></ul>`);
  assert(BS5NavbarNav(["testclass"]) == `<ul class="navbar-nav testclass"></ul>`);
  assert(BS5NavbarNav(["a":"b"]) == `<ul class="navbar-nav" a="b"></ul>`);
  assert(BS5NavbarNav(["testclass"], ["a":"b"]) == `<ul class="navbar-nav testclass" a="b"></ul>`);

  assert(BS5NavbarNav("Hello") == `<ul class="navbar-nav">Hello</ul>`);
  assert(BS5NavbarNav(["testclass"], "Hello") == `<ul class="navbar-nav testclass">Hello</ul>`);
  assert(BS5NavbarNav(["a":"b"], "Hello") == `<ul class="navbar-nav" a="b">Hello</ul>`);
  assert(BS5NavbarNav(["testclass"], ["a":"b"], "Hello") == `<ul class="navbar-nav testclass" a="b">Hello</ul>`);
}
