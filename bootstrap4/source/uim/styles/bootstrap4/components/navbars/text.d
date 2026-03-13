module uim.bootstrap.bs4.components.navbars.text;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4NavbarText : BS4Obj {
  mixin(H5This!("SPAN", ["navbar-text"]));
}
static BS4NavbarText");

///
unittest {
  assert(BS4NavbarText == `<span class="navbar-text"></span>`);
  assert(BS4NavbarText("some text") == `<span class="navbar-text">some text</span>`);
}}