module uim.tabler.components.pageheader;

import uim.tabler;

@safe:

/** 
 * PageHeader is used to create a page header for the page.
 * https://tabler.io/docs/layout#page-header
 */
class TABPageHeader : H5Div {
  mixin H5Template!(TABPageHeader, ["page-header"]);
  mixin(HtmlMethods!TABPageHeader);
}
///
unittest {
  assert(TABPageHeader() == `<div class="page-header"></div>`);
  assert(TABPageHeader(["testclass"]) == `<div class="page-header testclass"></div>`);
  assert(TABPageHeader(["a": "b"]) == `<div class="page-header" a="b"></div>`);
  assert(TABPageHeader(["testclass"], ["a": "b"]) == `<div class="page-header testclass" a="b"></div>`);

  assert(TABPageHeader("Hello") == `<div class="page-header">Hello</div>`);
  assert(TABPageHeader(["testclass"], "Hello") == `<div class="page-header testclass">Hello</div>`);
  assert(TABPageHeader(["a": "b"], "Hello") == `<div class="page-header" a="b">Hello</div>`);
  assert(TABPageHeader(["testclass"], ["a": "b"], "Hello") == `<div class="page-header testclass" a="b">Hello</div>`);
}
