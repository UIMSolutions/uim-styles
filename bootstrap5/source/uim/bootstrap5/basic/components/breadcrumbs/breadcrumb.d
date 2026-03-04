module uim.bootstrap5.basic.components.breadcrumbs.breadcrumb;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

class BS5Breadcrumb : H5Nav {
  mixin H5Template!(BS5Breadcrumb, null, ["aria-label":"breadcrumb"]);

  auto addList() {
    addContent(new BS5BreadcrumbList);
    return this;
  }
}
///
unittest {
  assert(BS5Breadcrumb() == `<nav aria-label="breadcrumb"></nav>`);
  assert(BS5Breadcrumb(["testclass"]) == `<nav class="testclass" aria-label="breadcrumb"></nav>`);
  assert(BS5Breadcrumb(["a":"b"]) == `<nav aria-label="breadcrumb" a="b"></nav>`);
  assert(BS5Breadcrumb(["testclass"], ["a":"b"]) == `<nav class="testclass" aria-label="breadcrumb" a="b"></nav>`);

  assert(BS5Breadcrumb("Hello") == `<nav aria-label="breadcrumb">Hello</nav>`);
  assert(BS5Breadcrumb(["testclass"], "Hello") == `<nav class="testclass" aria-label="breadcrumb">Hello</nav>`);
  assert(BS5Breadcrumb(["a":"b"], "Hello") == `<nav aria-label="breadcrumb" a="b">Hello</nav>`);
  assert(BS5Breadcrumb(["testclass"], ["a":"b"], "Hello") == `<nav class="testclass" aria-label="breadcrumb" a="b">Hello</nav>`);
}
