module uim.bootstrap5.basic.components.navbars.collapse;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5NavbarCollapse : H5Div {
  mixin H5Template!(BS5NavbarCollapse, ["collapse", "navbar-collapse"]);
}
///
unittest {
  assert(BS5NavbarCollapse() == `<div class="collapse navbar-collapse"></div>`);
  assert(BS5NavbarCollapse(["testclass"]) == `<div class="collapse navbar-collapse testclass"></div>`);
  assert(BS5NavbarCollapse(["a":"b"]) == `<div class="collapse navbar-collapse" a="b"></div>`);
  assert(BS5NavbarCollapse(["testclass"], ["a":"b"]) == `<div class="collapse navbar-collapse testclass" a="b"></div>`);

  assert(BS5NavbarCollapse("Hello") == `<div class="collapse navbar-collapse">Hello</div>`);
  assert(BS5NavbarCollapse(["testclass"], "Hello") == `<div class="collapse navbar-collapse testclass">Hello</div>`);
  assert(BS5NavbarCollapse(["a":"b"], "Hello") == `<div class="collapse navbar-collapse" a="b">Hello</div>`);
  assert(BS5NavbarCollapse(["testclass"], ["a":"b"], "Hello") == `<div class="collapse navbar-collapse testclass" a="b">Hello</div>`);
}