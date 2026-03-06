module uim.bootstrap53.components.breadcrumbs.list;

import uim.bootstrap53;

mixin(ShowModule!());

@safe:

class BS53BreadcrumbList : H5Ol {
  mixin H5Template!(BS53BreadcrumbList, ["breadcrumb-list"], null);
}
///
unittest {
  assert(BS53BreadcrumbList() == `<ol class="breadcrumb-list"></ol>`);
  assert(BS53BreadcrumbList(["testclass"]) == `<ol class="breadcrumb-list testclass"></ol>`);
  assert(BS53BreadcrumbList(["a":"b"]) == `<ol class="breadcrumb-list" a="b"></ol>`);
  assert(BS53BreadcrumbList(["testclass"], ["a":"b"]) == `<ol class="breadcrumb-list testclass" a="b"></ol>`);  

  assert(BS53BreadcrumbList("Hello") == `<ol class="breadcrumb-list">Hello</ol>`);
  assert(BS53BreadcrumbList(["testclass"], "Hello") == `<ol class="breadcrumb-list testclass">Hello</ol>`);
  assert(BS53BreadcrumbList(["a":"b"], "Hello") == `<ol class="breadcrumb-list" a="b">Hello</ol>`);
  assert(BS53BreadcrumbList(["testclass"], ["a":"b"], "Hello") == `<ol class="breadcrumb-list testclass" a="b">Hello</ol>`);
}