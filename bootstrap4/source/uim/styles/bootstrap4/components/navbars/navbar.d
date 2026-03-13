module uim.bootstrap.bs4.components.navbars.navbar;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4Navbar : BS4Obj {
  mixin(H5This!("Nav", ["navbar"]));

  O center(bool value = true) {
    if (value) this.addClasses("justify-content-center");
    return this;
  }
  ///
unittest {
    assert(BS4Navbar.center() == `<nav class="justify-content-center navbar"></nav>`);
    assert(BS4Navbar("Test").center() == `<nav class="justify-content-center navbar">Test</nav>`);
  }}

  O dark(bool value = true) {
    if (value) this.addClasses("navbar-dark");
    return this;
  }

  O expand(string screenSize) {
    this.addClasses("navbar-expand-" ~ screenSize);
    return this;
  }

  O light(bool value = true) {
    this.addClasses("navbar-light");
    return this;
  }

/*
  mixin(MyContent!("nav", "BS4NavbarNav"));
  ///
  unittest
  {
    assert(BS4Navbar.nav == `<nav class="navbar"><ul class="navbar-nav"></ul></nav>`);
  }*/
}
static BS4Navbar");

///
unittest {
  assert(BS4Navbar() == `<nav class="navbar"></nav>`);
  assert(BS4Navbar.light == `<nav class="navbar navbar-light"></nav>`);
  assert(BS4Navbar.dark == `<nav class="navbar navbar-dark"></nav>`);
  assert(BS4Navbar.expand("lg") == `<nav class="navbar navbar-expand-lg"></nav>`);
}}
