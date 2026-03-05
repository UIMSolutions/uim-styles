module uim.bootstrap5.basic.components.navbars.togglericon;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5NavbarTogglerIcon : H5Span {
  mixin H5Template!(BS5NavbarTogglerIcon, ["navbar-toggler-icon"]);
}
///
unittest {
  assert(BS5NavbarTogglerIcon() == `<span class="navbar-toggler-icon"></span>`);
  assert(BS5NavbarTogglerIcon(["testclass"]) == `<span class="navbar-toggler-icon testclass"></span>`);
  assert(BS5NavbarTogglerIcon(["a":"b"]) == `<span class="navbar-toggler-icon" a="b"></span>`);
  assert(BS5NavbarTogglerIcon(["testclass"], ["a":"b"]) == `<span class="navbar-toggler-icon testclass" a="b"></span>`);

  assert(BS5NavbarTogglerIcon("SomeContent") == `<span class="navbar-toggler-icon">SomeContent</span>`);
  assert(BS5NavbarTogglerIcon(["testclass"], "SomeContent") == `<span class="navbar-toggler-icon testclass">SomeContent</span>`);
  assert(BS5NavbarTogglerIcon(["a":"b"], "SomeContent") == `<span class="navbar-toggler-icon" a="b">SomeContent</span>`);
  assert(BS5NavbarTogglerIcon(["testclass"], ["a":"b"], "SomeContent") == `<span class="navbar-toggler-icon testclass" a="b">SomeContent</span>`);
}