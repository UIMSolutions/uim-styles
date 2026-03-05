module uim.bootstrap5.basic.components.paginations.link;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5PageLink : H5A {
  mixin H5Template!(BS5PageLink, ["page-link"], ["href":"#"]);
}
///
unittest {
  assert(BS5PageLink() == `<a class="page-link" href="#"></a>`);
  assert(BS5PageLink(["testclass"]) == `<a class="page-link testclass" href="#"></a>`);
  assert(BS5PageLink(["a":"b"]) == `<a class="page-link" a="b" href="#"></a>`);
  assert(BS5PageLink(["testclass"], ["a":"b"]) == `<a class="page-link testclass" a="b" href="#"></a>`);

  assert(BS5PageLink("SomeContent") == `<a class="page-link" href="#">SomeContent</a>`);
  assert(BS5PageLink(["testclass"], "SomeContent") == `<a class="page-link testclass" href="#">SomeContent</a>`);
  assert(BS5PageLink(["a":"b"], "SomeContent") == `<a class="page-link" a="b" href="#">SomeContent</a>`);
  assert(BS5PageLink(["testclass"], ["a":"b"], "SomeContent") == `<a class="page-link testclass" a="b" href="#">SomeContent</a>`);
}