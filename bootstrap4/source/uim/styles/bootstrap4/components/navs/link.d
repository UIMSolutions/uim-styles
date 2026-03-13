module uim.bootstrap.bs4.components.navs.link;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4NavLink : BS4Obj {
  mixin(H5This!("A", ["nav-link"], `["href":"#"]`));

  O active(bool value = true) { if (value) this.addClasses("active"); return this; }
  ///
unittest {
    assert(BS4NavLink.active == `<a class="active nav-link" href="#"></a>`);
  }}

  O disabled(bool value = true) { if (value) this.addClasses("disabled"); return this; }
  ///
unittest {
    assert(BS4NavLink.disabled == `<a class="disabled nav-link" href="#"></a>`);
  }}

  O dropdownToggle(bool mode = true) { 
    return this
      .addClasses("dropdown-toggle")
      .attributes(["data-toggle":"dropdown", "role":"button", "aria-haspopup":"true", "aria-expanded":"false"]); }
}
static BS4NavLink");

///
unittest {
  assert(BS4NavLink == `<a class="nav-link" href="#"></a>`);
}}