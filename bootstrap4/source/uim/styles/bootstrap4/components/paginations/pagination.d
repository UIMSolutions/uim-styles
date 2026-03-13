module uim.bootstrap.bs4.components.paginations.pagination;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4Pagination : BS4Obj {
  mixin(H5This!("UL", ["pagination"]));

  
  O center(string aSize) { return this.addClasses("justify-content-centers"); }
  O right(string aSize) { return this.addClasses("justify-content-end"); }
  O size(string aSize) { return this.addClasses("pagination-"~aSize); }

  mixin(MyContent!("item", "BS4PageItem"));

  mixin(MyContent!("link", "this.item", "BS4PageLink"));
}
static BS4Pagination");

///
unittest {
  assert(BS4Pagination == `<ul class="pagination"></ul>`);
  assert(BS4Pagination.link == `<ul class="pagination"><li class="page-item"><a class="page-link" href="#"></a></li></ul>`);
}}