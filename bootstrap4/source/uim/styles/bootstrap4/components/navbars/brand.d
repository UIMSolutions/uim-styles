module uim.bootstrap.bs4.components.navbars.brand;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4NavbarBrand : BS4Obj {
  mixin(H5This!("a", ["navbar-brand"]));

  mixin(MyContent!("image", "H5IMG"));
}

static BS4NavbarBrand");

///
unittest {
  assert(BS4NavbarBrand == `<a class="navbar-brand"></a>`);
}}
