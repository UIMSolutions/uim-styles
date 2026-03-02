module uim.tabler.components.inputs.inputicon;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABInputIcon : H5Div {
  mixin H5Template!(TABInputIcon, ["input-icon"]);
  mixin(HtmlMethods!TABInputIcon);
}
///
unittest {
  assert(TABInputIcon() == `<div class="input-icon"></div>`);
  assert(TABInputIcon(["testclass"]) == `<div class="input-icon testclass"></div>`);
  assert(TABInputIcon(["a": "b"]) == `<div class="input-icon" a="b"></div>`);
  assert(TABInputIcon(["testclass"], ["a": "b"]) == `<div class="input-icon testclass" a="b"></div>`);

  assert(TABInputIcon("Hello") == `<div class="input-icon">Hello</div>`);
  assert(TABInputIcon(["testclass"], "Hello") == `<div class="input-icon testclass">Hello</div>`);
  assert(TABInputIcon(["a": "b"], "Hello") == `<div class="input-icon" a="b">Hello</div>`);
  assert(TABInputIcon(["testclass"], ["a": "b"], "Hello") == `<div class="input-icon testclass" a="b">Hello</div>`);
}