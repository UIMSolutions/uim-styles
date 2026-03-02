module uim.tabler.components.empties.action;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABEmptyAction : H5Div {
  mixin H5Template!(TABEmptyAction, ["empty-action"]);
  mixin(HtmlMethods!TABEmptyAction);
}
///
unittest {
  assert(TABEmptyAction() == `<div class="empty-action"></div>`);
  assert(TABEmptyAction(["testclass"]) == `<div class="empty-action testclass"></div>`);  
  assert(TABEmptyAction(["a": "b"]) == `<div class="empty-action" a="b"></div>`);
  assert(TABEmptyAction(["testclass"], ["a": "b"]) == `<div class="empty-action testclass" a="b"></div>`);

  assert(TABEmptyAction("Hello") == `<div class="empty-action">Hello</div>`);
  assert(TABEmptyAction(["testclass"], "Hello") == `<div class="empty-action testclass">Hello</div>`);
  assert(TABEmptyAction(["a": "b"], "Hello") == `<div class="empty-action" a="b">Hello</div>`);
  assert(TABEmptyAction(["testclass"], ["a": "b"], "Hello") == `<div class="empty-action testclass" a="b">Hello</div>`);
}
