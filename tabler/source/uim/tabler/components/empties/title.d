module uim.tabler.components.empties.title;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABEmptyTitle : H5P {
  mixin H5Template!(TABEmptyTitle, ["empty-title"]);
  mixin(HtmlMethods!TABEmptyTitle);
}
///
unittest {
  assert(TABEmptyTitle() == `<p class="empty-title"></p>`);
  assert(TABEmptyTitle(["testclass"]) == `<p class="empty-title testclass"></p>`);
  assert(TABEmptyTitle(["a": "b"]) == `<p class="empty-title" a="b"></p>`);
  assert(TABEmptyTitle(["testclass"], ["a": "b"]) == `<p class="empty-title testclass" a="b"></p>`);

  assert(TABEmptyTitle("Hello") == `<p class="empty-title">Hello</p>`);
  assert(TABEmptyTitle(["testclass"], "Hello") == `<p class="empty-title testclass">Hello</p>`);
  assert(TABEmptyTitle(["a": "b"], "Hello") == `<p class="empty-title" a="b">Hello</p>`);
  assert(TABEmptyTitle(["testclass"], ["a": "b"], "Hello") == `<p class="empty-title testclass" a="b">Hello</p>`);
}
