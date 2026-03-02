module uim.tabler.components.pagetitle;

import uim.tabler;

@safe:

class TABPageTitle : H5H2 {
  mixin H5Template!(TABPageTitle, ["page-title"]);
  mixin(HtmlMethods!TABPageTitle);
}
///
unittest {
  assert(TABPageTitle() == `<h2 class="page-title"></h2>`);
  assert(TABPageTitle(["testclass"]) == `<h2 class="page-title testclass"></h2>`);
  assert(TABPageTitle(["a": "b"]) == `<h2 class="page-title" a="b"></h2>`);
  assert(TABPageTitle(["testclass"], ["a": "b"]) == `<h2 class="page-title testclass" a="b"></h2>`);

  assert(TABPageTitle("Hello") == `<h2 class="page-title">Hello</h2>`);
  assert(TABPageTitle(["testclass"], "Hello") == `<h2 class="page-title testclass">Hello</h2>`);
  assert(TABPageTitle(["a": "b"], "Hello") == `<h2 class="page-title" a="b">Hello</h2>`);
  assert(TABPageTitle(["testclass"], ["a": "b"], "Hello") == `<h2 class="page-title testclass" a="b">Hello</h2>`);
}
