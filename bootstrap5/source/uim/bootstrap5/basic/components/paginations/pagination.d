module uim.bootstrap5.basic.components.paginations.pagination;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5Pagination : H5Ul {
  mixin H5Template!(BS5Pagination, ["pagination"]);

  // O center(string aSize) { return this.addClasses("justify-content-centers"); }
  // O right(string aSize) { return this.addClasses("justify-content-end"); }
  // O size(string aSize) { return this.addClasses("pagination-"~aSize); }

  // // mixin(MyContent!("item", "BS5PageItem"));
  // // mixin(MyContent!("link", "this.item", "BS5PageLink"));
}
///
unittest {
  assert(BS5Pagination() == `<ul class="pagination"></ul>`);
  assert(BS5Pagination(["testclass"]) == `<ul class="pagination testclass"></ul>`);
  assert(BS5Pagination(["a":"b"]) == `<ul class="pagination" a="b"></ul>`);
  assert(BS5Pagination(["testclass"], ["a":"b"]) == `<ul class="pagination testclass" a="b"></ul>`);

  assert(BS5Pagination("SomeContent") == `<ul class="pagination">SomeContent</ul>`);
  assert(BS5Pagination(["testclass"], "SomeContent") == `<ul class="pagination testclass">SomeContent</ul>`);
  assert(BS5Pagination(["a":"b"], "SomeContent") == `<ul class="pagination" a="b">SomeContent</ul>`);
  assert(BS5Pagination(["testclass"], ["a":"b"], "SomeContent") == `<ul class="pagination testclass" a="b">SomeContent</ul>`);

  // assert(BS5Pagination().link == `<ul class="pagination"><li class="page-item"><a class="page-link" href="#"></a></li></ul>`);
}