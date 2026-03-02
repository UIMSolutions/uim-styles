module uim.tabler.components.cardtabs;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * CardTabs is used to create tabs in the Card component.
 * https://tabler.io/docs/card#card-tabs
 */
class TABCardTabs : H5Div {
  mixin H5Template!(TABCardTabs, ["card-tabs"]);
  mixin(HtmlMethods!TABCardTabs);
}
///
unittest {
  assert(TABCardTabs() == `<div class="card-tabs"></div>`);
  assert(TABCardTabs(["testclass"]) == `<div class="card-tabs testclass"></div>`);
  assert(TABCardTabs(["a": "b"]) == `<div class="card-tabs" a="b"></div>`);
  assert(TABCardTabs(["testclass"], ["a": "b"]) == `<div class="card-tabs testclass" a="b"></div>`);

  assert(TABCardTabs("Hello") == `<div class="card-tabs">Hello</div>`);
  assert(TABCardTabs(["testclass"], "Hello") == `<div class="card-tabs testclass">Hello</div>`);
  assert(TABCardTabs(["a": "b"], "Hello") == `<div class="card-tabs" a="b">Hello</div>`);
  assert(TABCardTabs(["testclass"], ["a": "b"], "Hello") == `<div class="card-tabs testclass" a="b">Hello</div>`);
}
