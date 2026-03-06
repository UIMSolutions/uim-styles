module uim.bootstrap53.components.breadcrumbs.item;

import uim.bootstrap53;

mixin(ShowModule!());

@safe:

class BS53BreadcrumbItem : H5Li {
  mixin H5Template!(BS53BreadcrumbItem, ["breadcrumb-item"], null);
}
///
unittest {
  assert(BS53BreadcrumbItem() == `<li class="breadcrumb-item"></li>`);
  assert(BS53BreadcrumbItem(["testclass"]) == `<li class="breadcrumb-item testclass"></li>`);
  assert(BS53BreadcrumbItem(["a":"b"]) == `<li class="breadcrumb-item" a="b"></li>`);
  assert(BS53BreadcrumbItem(["testclass"], ["a":"b"]) == `<li class="breadcrumb-item testclass" a="b"></li>`);  

  assert(BS53BreadcrumbItem("Hello") == `<li class="breadcrumb-item">Hello</li>`);
  assert(BS53BreadcrumbItem(["testclass"], "Hello") == `<li class="breadcrumb-item testclass">Hello</li>`);
  assert(BS53BreadcrumbItem(["a":"b"], "Hello") == `<li class="breadcrumb-item" a="b">Hello</li>`);
  assert(BS53BreadcrumbItem(["testclass"], ["a":"b"], "Hello") == `<li class="breadcrumb-item testclass" a="b">Hello</li>`);
}