module uim.bootstrap5.basic.components.navs.header;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5NavHeader : H5Li {
  mixin H5Template!(BS5NavHeader, ["nav-header"]);
}
///
unittest {
  assert(BS5NavHeader() == `<li class="nav-header"></li>`);
  assert(BS5NavHeader(["testclass"]) == `<li class="nav-header testclass"></li>`);
  assert(BS5NavHeader(["a":"b"]) == `<li class="nav-header" a="b"></li>`);
  assert(BS5NavHeader(["testclass"], ["a":"b"]) == `<li class="nav-header testclass" a="b"></li>`);

  assert(BS5NavHeader("SomeContent") == `<li class="nav-header">SomeContent</li>`);
  assert(BS5NavHeader(["testclass"], "SomeContent") == `<li class="nav-header testclass">SomeContent</li>`);
  assert(BS5NavHeader(["a":"b"], "SomeContent") == `<li class="nav-header" a="b">SomeContent</li>`);
  assert(BS5NavHeader(["testclass"], ["a":"b"], "SomeContent") == `<li class="nav-header testclass" a="b">SomeContent</li>`);
}