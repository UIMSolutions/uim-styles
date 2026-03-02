module uim.bootstrap5.basic.components.breadcrumbs.breadcrumb;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

class BS5Breadcrumb : H5Nav {
  mixin BS5This!(null, ["aria-label":"breadcrumb"]);

  auto addList() {
    addContent(new BS5BreadcrumbList);
    return this;
  }
  ///
  unittest {
    // assert(
    //   BS5Breadcrumb.list == `<nav aria-label="breadcrumb"><ol class="breadcrumb" aria-label="breadcrumbs"></ol></nav>`);
  }

  mixin(BS5Calls!("Breadcrumb"));
}
///
unittest {
  // assert(BS5Breadcrumb == `<nav aria-label="breadcrumb"></nav>`);
}
