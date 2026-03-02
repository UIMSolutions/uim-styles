module uim.tabler.components.dropend;

import uim.tabler;

@safe:

/** 
 * Dropend is used to create a dropend menu.
 * https://tabler.io/docs/dropdowns#dropend
 */
class TABDropend : H5Div {
  mixin H5Template!(TABDropend, ["dropend"]);
  mixin(HtmlMethods!TABDropend);
}
///
unittest {
  assert(TABDropend() == `<div class="dropend"></div>`);
  assert(TABDropend(["testclass"]) == `<div class="dropend testclass"></div>`);
  assert(TABDropend(["a": "b"]) == `<div class="dropend" a="b"></div>`);
  assert(TABDropend(["testclass"], ["a": "b"]) == `<div class="dropend testclass" a="b"></div>`);

  assert(TABDropend("Hello") == `<div class="dropend">Hello</div>`);
  assert(TABDropend(["testclass"], "Hello") == `<div class="dropend testclass">Hello</div>`);
  assert(TABDropend(["a": "b"], "Hello") == `<div class="dropend" a="b">Hello</div>`);
  assert(TABDropend(["testclass"], ["a": "b"], "Hello") == `<div class="dropend testclass" a="b">Hello</div>`);
}
