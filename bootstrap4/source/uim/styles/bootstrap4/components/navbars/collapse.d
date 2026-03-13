module uim.bootstrap.bs4.components.navbars.collapse;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4NavbarCollapse : H5Div {
  mixin H5This!(["collapse", "navbar-collapse"]));

}
static BS4NavbarCollapse");

///
unittest {
  assert(BS4NavbarCollapse == `<div class="collapse navbar-collapse"></div>`);
}}