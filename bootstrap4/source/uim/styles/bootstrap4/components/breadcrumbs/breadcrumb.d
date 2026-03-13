module uim.bootstrap.bs4.components.breadcrumbs.breadcrumb;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4Breadcrumb : BS4Obj {
  mixin(H5This!("Nav", null, `["aria-label":"breadcrumb"]`));

  mixin(MyContent!("list", "BS4BreadcrumbList"));
  ///
unittest {
    assert(BS4Breadcrumb.list == `<nav aria-label="breadcrumb"><ol class="breadcrumb"></ol></nav>`);
  }}

}
static BS4Breadcrumb");

///
unittest {
  assert(BS4Breadcrumb == `<nav aria-label="breadcrumb"></nav>`);
}}
