module uim.bootstrap.bs4.components.breadcrumbs.list;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4BreadcrumbList : BS4Obj {
  mixin(H5This!("Ol", ["breadcrumb"], null));

  mixin(MyContent!("item", "BS4BreadcrumbItem"));
  ///
unittest {
    assert(BS4BreadcrumbList.item == `<ol class="breadcrumb"><li class="breadcrumb-item"></li></ol>`);
  }}

  mixin(MyContent!("link", "this.item", "BS4BreadcrumbLink"));
  ///
unittest {
    assert(BS4BreadcrumbList.link == `<ol class="breadcrumb"><li class="breadcrumb-item"><a></a></li></ol>`);
  }}
}
static BS4BreadcrumbList");

///
unittest {
  assert(BS4BreadcrumbList == `<ol class="breadcrumb"></ol>`);
}}
