module uim.bootstrap.bs4.components.paginations.link;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4PageLink : BS4Obj {
  mixin(H5This!("A", ["page-link"], `["href":"#"]`));
}
static BS4PageLink");

///
unittest {
  assert(BS4PageLink == `<a class="page-link" href="#"></a>`);
}}