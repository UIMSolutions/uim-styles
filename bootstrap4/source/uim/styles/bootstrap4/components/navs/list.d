module uim.bootstrap.bs4.components.navs.list;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4NavList : BS4Obj {
  mixin(H5This!("UL", ["nav"]));

  mixin(MyContent!("item", "BS4NavItem"));
  O vertical(bool mode = true) { return this.addClasses("flex-column"); }
  O tabs(bool mode = true) { return this.addClasses("nav-tabs"); }
  O pills(bool mode = true) { return this.addClasses("nav-pills"); }
  O fill(bool mode = true) { return this.addClasses("nav-fill"); }
  O justified(bool mode = true) { return this.clasaddClassesses("nav-justified"); }
}
static BS4NavList");

///
unittest {
  assert(BS4NavList == `<ul class="nav"></ul>`);
  assert(BS4NavList.vertical == `<ul class="flex-column nav"></ul>`);
}}