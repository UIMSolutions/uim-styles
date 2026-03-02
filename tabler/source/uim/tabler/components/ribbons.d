module uim.tabler.components.ribbons;

import uim.tabler;

@safe:

/** 
 * Ribbon is used to create a ribbon for the card.
 * https://tabler.io/docs/components/ribbon
 */
class TABRibbon : H5Div {
  mixin H5Template!(TABRibbon, ["ribbon"]);
  mixin(HtmlMethods!TABRibbon);
}
///
unittest {
  assert(TABRibbon() == `<div class="ribbon"></div>`);
  assert(TABRibbon(["testclass"]) == `<div class="ribbon testclass"></div>`);
  assert(TABRibbon(["a": "b"]) == `<div class="ribbon" a="b"></div>`);
  assert(TABRibbon(["testclass"], ["a": "b"]) == `<div class="ribbon testclass" a="b"></div>`);

  assert(TABRibbon("Hello") == `<div class="ribbon">Hello</div>`);
  assert(TABRibbon(["testclass"], "Hello") == `<div class="ribbon testclass">Hello</div>`);
  assert(TABRibbon(["a": "b"], "Hello") == `<div class="ribbon" a="b">Hello</div>`);
  assert(TABRibbon(["testclass"], ["a": "b"], "Hello") == `<div class="ribbon testclass" a="b">Hello</div>`);
}
