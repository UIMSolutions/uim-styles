module uim.bootstrap.bs4.components.navbars.toggler;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

/* BS4NavbarToggler - for use with collapse plugin and other navigation toggling behaviors */
class BS4NavbarToggler : BS4ButtonObj {
  mixin(H5This!("button", ["navbar-toggler"], `["data-toggle":"collapse", "aria-controls":"navbar"]`));

  O position(string value) {
    return this.addClasses("navbar-toggler-" ~ position);
  }

  O target(string targetId) {
    return attributes(["data-target": "#" ~ targetId]);
  }
}
static BS4NavbarToggler");

///
unittest {
  assert(BS4NavbarToggler() == `<button class="navbar-toggler" aria-controls="navbar" type="button"></button>`);
}}
