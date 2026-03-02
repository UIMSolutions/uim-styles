module uim.tabler.components.empties.header;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABEmptyHeader : H5Div {
  mixin H5Template!(TABEmptyHeader, ["empty-header"]);
  mixin(HtmlMethods!TABEmptyHeader);
}
///
unittest {
  assert(TABEmptyHeader() == `<div class="empty-header"></div>`);
  assert(TABEmptyHeader(["testclass"]) == `<div class="empty-header testclass"></div>`);
  assert(TABEmptyHeader(["a": "b"]) == `<div class="empty-header" a="b"></div>`);
  assert(TABEmptyHeader(["testclass"], ["a": "b"]) == `<div class="empty-header testclass" a="b"></div>`);

  assert(TABEmptyHeader("Hello") == `<div class="empty-header">Hello</div>`);
  assert(TABEmptyHeader(["testclass"], "Hello") == `<div class="empty-header testclass">Hello</div>`);
  assert(TABEmptyHeader(["a": "b"], "Hello") == `<div class="empty-header" a="b">Hello</div>`);
  assert(TABEmptyHeader(["testclass"], ["a": "b"], "Hello") == `<div class="empty-header testclass" a="b">Hello</div>`);  
}
