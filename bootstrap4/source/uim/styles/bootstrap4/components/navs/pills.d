module uim.bootstrap.bs4.components.navs.pills;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4NavPills : BS4Obj {
  mixin(H5This!("UL", ["nav", "nav-pills"], `["role":"tablist"]`));
  mixin(MyContent!("item", "BS4NavItem"));
}
static BS4NavPills");

///
unittest {
  assert(BS4NavPills == `<ul class="nav nav-pills" role="tablist"></ul>`);
}}