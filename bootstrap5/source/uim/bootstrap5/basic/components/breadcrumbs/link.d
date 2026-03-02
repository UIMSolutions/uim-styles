module uim.bootstrap5.basic.components.breadcrumbs.link;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

class BS5BreadcrumbLink : H5A {
  mixin H5Template!(BS5BreadcrumbLink, null, null);
}
///
unittest {
  // assert(BS5BreadcrumbLink == `<a></a>`);
}
