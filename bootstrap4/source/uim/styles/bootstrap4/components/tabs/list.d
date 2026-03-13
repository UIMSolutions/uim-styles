module uim.bootstrap.bs4.components.tabs.list;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4TabList : BS4Obj {
  mixin(H5This!("UL", ["nav"], `["role":"tablist"]`));

  mixin(MyContent!("item", "BS4NavItem"));

  O vertical(bool mode = true) { return this.addClasses("flex-column"); }
  O tabs(bool mode = true) { return this.addClasses("nav-tabs"); }
  O pills(bool mode = true) { return this.addClasses("nav-pills"); }
  O fill(bool mode = true) { return this.addClasses("nav-fill"); }
  O justified(bool mode = true) { return this.addClasses("nav-justified"); }
}
static BS4TabList");

///
unittest {
  assert(BS4TabList == `<ul class="nav" role="tablist"></ul>`);
  assert(BS4TabList.vertical == `<ul class="flex-column nav" role="tablist"></ul>`);
}}