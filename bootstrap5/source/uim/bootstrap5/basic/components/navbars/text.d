module uim.bootstrap5.basic.components.navbars.text;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5NavbarText : H5Span {
  mixin H5Template!(BS5NavbarText, ["navbar-text"]);
}
///
unittest {
  assert(BS5NavbarText() == `<span class="navbar-text"></span>`);
  assert(BS5NavbarText(["testclass"]) == `<span class="navbar-text testclass"></span>`);
  assert(BS5NavbarText(["a":"b"]) == `<span class="navbar-text" a="b"></span>`);
  assert(BS5NavbarText(["testclass"], ["a":"b"]) == `<span class="navbar-text testclass" a="b"></span>`);

  assert(BS5NavbarText("Hello") == `<span class="navbar-text">Hello</span>`);
  assert(BS5NavbarText(["testclass"], "Hello") == `<span class="navbar-text testclass">Hello</span>`);
  assert(BS5NavbarText(["a":"b"], "Hello") == `<span class="navbar-text" a="b">Hello</span>`);
  assert(BS5NavbarText(["testclass"], ["a":"b"], "Hello") == `<span class="navbar-text testclass" a="b">Hello</span>`);
}