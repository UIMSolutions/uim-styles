module uim.bootstrap5.basic.components.navbars.navbar;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5Navbar : H5Nav {
  mixin H5Template!(BS5Navbar, ["navbar"]);

//   O center(bool value = true) {
//     if (value) this.addClasses("justify-content-center");
//     return this;
//   }

//   O dark(bool value = true) {
//     if (value) this.addClasses("navbar-dark");
//     return this;
//   }

//   O expand(string screenSize) {
//     this.addClasses("navbar-expand-" ~ screenSize);
//     return this;
//   }

//   O light(bool value = true) {
//     this.addClasses("navbar-light");
//     return this;
//   }

// /*
//   // mixin(MyContent!("nav", "BS5NavbarNav"));
//   ///
//   unittest
//   {
//     // assert(BS5Navbar.nav == `<nav class="navbar"><ul class="navbar-nav"></ul></nav>`);
//   }*/
}
///
unittest {
  assert(BS5Navbar() == `<nav class="navbar"></nav>`);
  assert(BS5Navbar(["testclass"]) == `<nav class="navbar testclass"></nav>`);
  assert(BS5Navbar(["a":"b"]) == `<nav class="navbar" a="b"></nav>`);
  assert(BS5Navbar(["testclass"], ["a":"b"]) == `<nav class="navbar testclass" a="b"></nav>`);

  assert(BS5Navbar("Hello") == `<nav class="navbar">Hello</nav>`);
  assert(BS5Navbar(["testclass"], "Hello") == `<nav class="navbar testclass">Hello</nav>`);
  assert(BS5Navbar(["a":"b"], "Hello") == `<nav class="navbar" a="b">Hello</nav>`);
  assert(BS5Navbar(["testclass"], ["a":"b"], "Hello") == `<nav class="navbar testclass" a="b">Hello</nav>`);
}
