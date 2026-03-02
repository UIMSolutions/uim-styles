module uim.bootstrap5.basic.components.breadcrumbs.item;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

// Bootstrap 5 Breadcrumb Item
class BS5BreadcrumbItem : H5Li {
  mixin H5Template!(BS5BreadcrumbItem, ["breadcrumb-item"], null);

  // BS5BreadcrumbItem active(bool mode = true) {
  //   if (mode)
  //     this.addClasses("active");
  //   return this;
  // }
  // ///
  // unittest {
  //   // assert(BS5BreadcrumbItem.active == `<li class="active breadcrumb-item"></li>`);
  // }

  // BS5BreadcrumbItem disabled(bool mode = true) {
  //   if (mode)
  //     this.addClasses("disabled");
  //   return this;
  // }
  // ///
  // unittest {
  //   // assert(BS5BreadcrumbItem.disabled == `<li class="breadcrumb-item disabled"></li>`);
  // }

  // // mixin(MyContent!("link", "BS5BreadcrumbLink"));
  // ///
  // unittest {
  //   // assert(BS5BreadcrumbItem.link == `<li class="breadcrumb-item"><a></a></li>`);
  // }

}
///
unittest {
  // assert(BS5BreadcrumbItem == `<li class="breadcrumb-item"></li>`);
}

