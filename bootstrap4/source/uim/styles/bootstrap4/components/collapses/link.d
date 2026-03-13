module uim.bootstrap.bs4.components.collapses.link;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4CollapseLink : BS4Obj {
  mixin(H5This!("a", ["btn"], `["data-toggle":"collapse", "role":"button"]`));
}
static BS4CollapseLink");

///
unittest {
  assert(BS4CollapseLink == `<a class="btn" data-toggle="collapse" role="button"></a>`);
}}