module uim.bootstrap5.basic.components.navbars.toggler;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

/* BS5NavbarToggler - for use with collapse plugin and other navigation toggling behaviors */
class BS5NavbarToggler : H5Button {
  mixin H5Template!(BS5NavbarToggler, ["navbar-toggler"], ["data-bs-toggle":"collapse", "aria-controls":"navbar"]);

  // O position(string value) {
  //   return this.addClasses("navbar-toggler-" ~ position);
  // }

  // O target(string targetId) {
  //   return attributes(["data-target": "#" ~ targetId]);
  // }
}
///
unittest {
  assert(BS5NavbarToggler() == `<button class="navbar-toggler" aria-controls="navbar" data-bs-toggle="collapse" type="button"></button>`);
  assert(BS5NavbarToggler(["testclass"]) == `<button class="navbar-toggler testclass" aria-controls="navbar" data-bs-toggle="collapse" type="button"></button>`);
  assert(BS5NavbarToggler(["a":"b"]) == `<button class="navbar-toggler" a="b" aria-controls="navbar" data-bs-toggle="collapse" type="button"></button>`);
  assert(BS5NavbarToggler(["testclass"], ["a":"b"]) == `<button class="navbar-toggler testclass" a="b" aria-controls="navbar" data-bs-toggle="collapse" type="button"></button>`);
  
  assert(BS5NavbarToggler("SomeContent") == `<button class="navbar-toggler" aria-controls="navbar" data-bs-toggle="collapse" type="button">SomeContent</button>`);
  assert(BS5NavbarToggler(["testclass"], "SomeContent") == `<button class="navbar-toggler testclass" aria-controls="navbar" data-bs-toggle="collapse" type="button">SomeContent</button>`);
  assert(BS5NavbarToggler(["a":"b"], "SomeContent") == `<button class="navbar-toggler" a="b" aria-controls="navbar" data-bs-toggle="collapse" type="button">SomeContent</button>`);   
  assert(BS5NavbarToggler(["testclass"], ["a":"b"], "SomeContent") == `<button class="navbar-toggler testclass" a="b" aria-controls="navbar" data-bs-toggle="collapse" type="button">SomeContent</button>`);
}
